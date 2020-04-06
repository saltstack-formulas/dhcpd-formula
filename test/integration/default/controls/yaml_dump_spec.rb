# frozen_string_literal: true

control 'DHCPD `map.jinja` YAML dump' do
  title 'should contain the lines'

  arch = 'amd64'
  common01 = <<~COMMON.chomp
    allow: []
    arch: #{arch}
    authoritative: false
    classes: {}
  COMMON
  common02 = <<~COMMON.chomp
    customized_options: {}
    ddns_domainname: ''
    ddns_update_style: ''
    default_lease_time: 0
    deny: []
    domain_name: ''
    domain_name_servers: []
    domain_search: []
  COMMON
  common03 = <<~COMMON.chomp
    failover_peers: {}
    get_lease_hostnames: ''
    hosts: {}
    keys: {}
    listen_interfaces: []
    log_facility: ''
    max_lease_time: 0
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
    shared_networks: {}
    subnet_mask: ''
    subnets: {}
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
