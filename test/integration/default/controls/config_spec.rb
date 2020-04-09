# frozen_string_literal: true

# Default values
config_filename = '/etc/dhcp/dhcpd.conf'
rootgroup = 'root'
spurious_whitespace = ''
# Overide by platform
case platform[:family]
when 'debian'
  service_config_filename = '/etc/default/isc-dhcp-server'
  service_config_file_contents = <<~SERVICE_CONFIG_FILE.chomp
    # SaltStack-generated demon configuration file for ISC dhcpd

    # Path to dhcpd's config file (default: /etc/dhcp/dhcpd.conf).
    #DHCPD_CONF=/etc/dhcp/dhcpd.conf

    # Path to dhcpd's PID file (default: /var/run/dhcpd.pid).
    #DHCPD_PID=/var/run/dhcpd.pid

    # Additional options to start dhcpd with.
    #       Don't use options -cf or -pf here; use DHCPD_CONF/ DHCPD_PID instead
    #OPTIONS=""

    # On what interfaces should the DHCP server (dhcpd) serve DHCP requests?
    #       Separate multiple interfaces with spaces, e.g. "eth0 eth1".
    INTERFACES="em1 em2"
  SERVICE_CONFIG_FILE
when 'redhat', 'fedora'
  service_config_filename = '/etc/systemd/system/dhcpd.service.d/override.conf'
  service_config_file_contents = <<~SERVICE_CONFIG_FILE.chomp
    [Service]
    ExecStart=
    ExecStart=/usr/sbin/dhcpd -f -cf /etc/dhcp/dhcpd.conf -user dhcpd -group dhcpd --no-pid em1 em2
  SERVICE_CONFIG_FILE
  # Additionally, set the spurious whitespace for CentOS
  # TODO: This needs to be fixed in the formula and then removed from here
  case platform[:name]
  when 'centos'
    spurious_whitespace = '  '
  end
when 'suse'
  config_filename = '/etc/dhcpd.conf'
when 'freebsd'
  config_filename = '/usr/local/etc/dhcpd.conf'
  rootgroup = 'wheel'
  service_config_filename = '/etc/rc.conf.d/dhcpd'
  service_config_file_contents = <<~SERVICE_CONFIG_FILE.chomp
    # SaltStack-generated demon configuration file for ISC dhcpd

    dhcpd_ifaces="em1 em2"
  SERVICE_CONFIG_FILE
when 'linux'
  case platform[:name]
  when 'arch'
    config_filename = '/etc/dhcpd.conf'
  end
end

control 'DHCPD configuration' do
  title 'should be generated properly'

  describe file(config_filename) do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into rootgroup }
    its('mode') { should cmp '0644' }
    its('content') do
      should include <<~CONFIG_FILE.chomp
        # dhcpd.conf
        #
        # SaltStack-generated configuration file for ISC dhcpd
        #

        # Customized dhcp options
        option auto-proxy-config code 252 = string;

        # option definitions common to all supported networks...
        option domain-name "example.org";
        option domain-name-servers ns1.example.org, ns2.example.org;
        default-lease-time 600;
        max-lease-time 7200;

        #use-host-decl-names off;

        # LDAP Backend Configuration

        # Use this to enable / disable dynamic dns updates globally.
        #ddns-update-style none;
        #update-static-leases off;

        # If this DHCP server is the official DHCP server for the local
        # network, the authoritative directive should be uncommented.
        #authoritative;

        # Use this to send dhcp log messages to a different log file (you also
        # have to hack syslog.conf to complete the redirection).
        log-facility local7;
        # You can declare a class of clients and then do address allocation
        # based on that.  The example below shows a case where all clients
        # in a certain class get addresses on the 10.17.224/24 subnet, and all
        # other clients get addresses on the 10.0.29/24 subnet.
        class "foo" {
          match if substring (option vendor-class-identifier, 0, 4) = "SUNW";
        }
        failover peer "dhcp-failover" {
          primary;
          address 10.152.187.5;
          port 647;
          peer address 10.152.187.6;
          peer port 647;
          mclt 3600;
          split 128;
        }
        # No service will be given on this subnet, but declaring it helps the
        # DHCP server to understand the network topology.
        subnet 10.152.187.0 netmask 255.255.255.0 {
          pool {
            failover peer "dhcp-failover";
            range 10.152.187.1 10.152.187.254;
          }
        }
        # This is a very basic subnet declaration.
        subnet 10.254.239.0 netmask 255.255.255.224 {
          range 10.254.239.10 10.254.239.20;
          option routers rtr-239-0-1.example.org, rtr-239-0-2.example.org;
        }
        # This declaration allows BOOTP clients to get dynamic addresses,
        # which we don't really recommend.
        subnet 10.254.239.32 netmask 255.255.255.224 {
          range dynamic-bootp 10.254.239.40 10.254.239.60;
          option broadcast-address 10.254.239.31;
          option routers rtr-239-32-1.example.org;
        }
        # A slightly different configuration for an internal subnet.
        subnet 10.5.5.0 netmask 255.255.255.224 {
          range 10.5.5.26 10.5.5.30;
          option broadcast-address 10.5.5.31;
          option domain-name-servers ns1.internal.example.org;
          option domain-name "internal.example.org";
          default-lease-time 600;
          max-lease-time 7200;
          option routers 10.5.5.1;
        #{spurious_whitespace}
          # Hosts can be specified for subnets, taking subnets defaults
          host jake {
            hardware ethernet 08:00:a7:26:c0:a9;
            fixed-address 10.5.5.27;
          }
        }


        # Fixed IP addresses can also be specified for hosts.  These addresses
        # should not also be listed as being available for dynamic assignment.
        # Hosts for which fixed IP addresses have been specified can boot using
        # BOOTP or DHCP.  Hosts for which no fixed address is specified can only
        # be booted with DHCP, unless there is an address range on the subnet
        # to which a BOOTP client is connected which has the dynamic-bootp flag
        # set.
        host fantasia {
          hardware ethernet 08:00:07:26:c0:a5;
          fixed-address fantasia.fugue.com;
        }

        # The hostname for a host can be passed in the DHCP response. Using the
        # host_name key sets option host-name in the dhcpd configuration.
        host joe {
          hardware ethernet 08:00:2b:4c:29:32;
          fixed-address joe.fugue.com;
          option host-name "joe";
        }

        # Hosts which require special configuration options can be listed in
        # host statements.  If no address is specified, the address will be
        # allocated dynamically (if possible), but the host-specific information
        # will still come from the host declaration.
        host passacaglia {
          hardware ethernet 0:0:c0:5d:bd:95;
          filename "vmunix.passacaglia";
          server-name "toccata.fugue.com";
        }

        shared-network 224-29 {
        #{spurious_whitespace}
          subnet 10.0.29.0 netmask 255.255.255.0 {
            option routers rtr-29.example.org;
          }
        #{spurious_whitespace}
          subnet 10.17.224.0 netmask 255.255.255.0 {
            option routers rtr-224.example.org;
          }
          pool {
            allow members of "foo";
            range 10.17.224.10 10.17.224.250;
          }
          pool {
            deny members of "foo";
            range 10.0.29.10 10.0.29.230;
          }
        }
      CONFIG_FILE
    end
  end
end

control 'DHCPD service configuration' do
  title 'should be generated properly'

  only_if(
    'the service configuration file is only available on the Debian, RedHat, ' \
    'Fedora & FreeBSD platform families'
  ) do
    %w[debian redhat fedora freebsd].include?(platform[:family])
  end

  describe file(service_config_filename) do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into rootgroup }
    its('mode') { should cmp '0644' }
    its('content') { should include service_config_file_contents }
  end
end
