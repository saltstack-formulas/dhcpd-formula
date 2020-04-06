# frozen_string_literal: true

control 'DHCPD `map.jinja` YAML dump' do
  title 'should contain the lines'

  arch = 'amd64'
  common01 = <<~COMMON.chomp
    allow: []
    arch: #{arch}
    authoritative: false
    classes:
      foo:
        comment: 'You can declare a class of clients and then do address allocation

          based on that.  The example below shows a case where all clients

          in a certain class get addresses on the 10.17.224/24 subnet, and all

          other clients get addresses on the 10.0.29/24 subnet.

    '
        match: if substring (option vendor-class-identifier, 0, 4) = "SUNW"
  COMMON
  common02 = <<~COMMON.chomp
    customized_options:
      auto_proxy_config:
        code: 252
        type: string
    ddns_domainname: ''
    ddns_update_style: ''
    default_lease_time: 600
    deny: []
    domain_name: example.org
    domain_name_servers:
    - ns1.example.org
    - ns2.example.org
    domain_search: []
  COMMON
  common03 = <<~COMMON.chomp
    failover_peers:
      dhcp-failover:
        primary: true
        address: 10.152.187.5
        port: 647
        peer_address: 10.152.187.6
        peer_port: 647
        split: 128
        mclt: 3600
    get_lease_hostnames: ''
    hosts:
      fantasia:
        comment: 'Fixed IP addresses can also be specified for hosts.  These addresses

          should not also be listed as being available for dynamic assignment.

          Hosts for which fixed IP addresses have been specified can boot using

          BOOTP or DHCP.  Hosts for which no fixed address is specified can only

          be booted with DHCP, unless there is an address range on the subnet

          to which a BOOTP client is connected which has the dynamic-bootp flag

          set.

    '
        hardware: ethernet 08:00:07:26:c0:a5
        fixed_address: fantasia.fugue.com
      joe:
        comment: 'The hostname for a host can be passed in the DHCP response. Using the

          host_name key sets option host-name in the dhcpd configuration.

    '
        hardware: ethernet 08:00:2b:4c:29:32
        fixed_address: joe.fugue.com
        host_name: joe
      passacaglia:
        comment: 'Hosts which require special configuration options can be listed in

          host statements.  If no address is specified, the address will be

          allocated dynamically (if possible), but the host-specific information

          will still come from the host declaration.

    '
        hardware: ethernet 0:0:c0:5d:bd:95
        filename: vmunix.passacaglia
        server_name: toccata.fugue.com
    keys: {}
    ldap_base_dn: ''
    ldap_debug_file: ''
    ldap_init_retry: 0
    ldap_method: ''
    ldap_password: ''
    ldap_port: ''
    ldap_server: ''
    ldap_ssl: ''
    ldap_tls_ca_dir: ''
    ldap_tls_ca_file: ''
    ldap_tls_cert: ''
    ldap_tls_ciphers: ''
    ldap_tls_crlcheck: ''
    ldap_tls_key: ''
    ldap_tls_randfile: ''
    ldap_tls_reqcert: ''
    ldap_username: ''
    listen_interfaces:
    - em1
    - em2
    log_facility: local7
    lookup:
      enable: false
    max_lease_time: 7200
    one_lease_per_client: ''
  COMMON
  common04 = <<~COMMON.chomp
    routers: []
  COMMON
  common05 = <<~COMMON.chomp
    server_identifier: ''
    server_name: ''
  COMMON
  common06 = <<~COMMON.chomp
    shared_networks:
      224-29:
        subnets:
          10.17.224.0:
            netmask: 255.255.255.0
            routers: rtr-224.example.org
          10.0.29.0:
            netmask: 255.255.255.0
            routers: rtr-29.example.org
        pools:
        - allow: members of "foo"
          range:
          - 10.17.224.10
          - 10.17.224.250
        - deny: members of "foo"
          range:
          - 10.0.29.10
          - 10.0.29.230
    subnet_mask: ''
    subnets:
      10.152.187.0:
        comment: 'No service will be given on this subnet, but declaring it helps the

          DHCP server to understand the network topology.

    '
        netmask: 255.255.255.0
        pools:
        - failover_peer: dhcp-failover
          range:
          - 10.152.187.1
          - 10.152.187.254
      10.254.239.0:
        comment: This is a very basic subnet declaration.
        netmask: 255.255.255.224
        range:
        - 10.254.239.10
        - 10.254.239.20
        routers:
        - rtr-239-0-1.example.org
        - rtr-239-0-2.example.org
      10.254.239.32:
        comment: 'This declaration allows BOOTP clients to get dynamic addresses,

          which we don''t really recommend.

    '
        netmask: 255.255.255.224
        dynamic_bootp: true
        range:
        - 10.254.239.40
        - 10.254.239.60
        broadcast_address: 10.254.239.31
        routers: rtr-239-32-1.example.org
      10.5.5.0:
        comment: A slightly different configuration for an internal subnet.
        netmask: 255.255.255.224
        range:
        - 10.5.5.26
        - 10.5.5.30
        domain_name_servers:
        - ns1.internal.example.org
        domain_name: internal.example.org
        routers:
        - 10.5.5.1
        broadcast_address: 10.5.5.31
        default_lease_time: 600
        max_lease_time: 7200
        hosts:
          jake:
            comment: 'Hosts can be specified for subnets, taking subnets defaults

    '
            hardware: ethernet 08:00:a7:26:c0:a9
            fixed_address: 10.5.5.27
    update_static_leases: false
    use_host_decl_names: false
    zones: {}
  COMMON
  config = '/etc/dhcp/dhcpd.conf'
  enable = 'false'
  server = 'dhcp'
  service = 'dhcpd'
  yaml_dump = "---\n"
  yaml_dump +=
    case platform[:family]
    when 'debian'
      <<~YAML_DUMP.chomp
        #{common01}
        config: #{config}
        #{common02}
        enable: #{enable}
        #{common03}
        #{common04}
        server: isc-dhcp-server
        #{common05}
        service: isc-dhcp-server
        service_config: /etc/default/isc-dhcp-server
        #{common06}
      YAML_DUMP
    when 'redhat', 'fedora'
      <<~YAML_DUMP.chomp
        #{common01}
        config: #{config}
        #{common02}
        enable: #{enable}
        #{common03}
        #{common04}
        server: #{server}
        #{common05}
        service: #{service}
        service_config: /etc/systemd/system/dhcpd.service.d/override.conf
        #{common06}
      YAML_DUMP
    when 'suse'
      <<~YAML_DUMP.chomp
        #{common01}
        config: /etc/dhcpd.conf
        #{common02}
        enable: #{enable}
        #{common03}
        #{common04}
        server: dhcp-server
        #{common05}
        service: dhcpd
        #{common06}
      YAML_DUMP
    when 'freebsd'
      <<~YAML_DUMP.chomp
        #{common01}
        config: /usr/local/etc/dhcpd.conf
        #{common02}
        enable: #{enable}
        #{common03}
        rootgroup: wheel
        #{common04}
        server: isc-dhcp43-server
        #{common05}
        service: isc-dhcpd
        service_config: /etc/rc.conf.d/dhcpd
        #{common06}
      YAML_DUMP
    when 'linux'
      case platform[:name]
      when 'arch'
        <<~YAML_DUMP.chomp
          #{common01}
          config: /etc/dhcpd.conf
          #{common02}
          enable: #{enable}
          #{common03}
          #{common04}
          server: dhcp
          #{common05}
          service: dhcpd4
          #{common06}
        YAML_DUMP
      end
    end

  describe file('/tmp/salt_yaml_dump.yaml') do
    its('content') { should include yaml_dump }
  end
end
