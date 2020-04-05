# frozen_string_literal: true

control 'DHCPD `map.jinja` YAML dump' do
  title 'should contain the lines'

  config = '/etc/dhcp/dhcpd.conf'
  enable = 'false'
  server = 'dhcp'
  service = 'dhcpd'
  yaml_dump = "---\n"
  yaml_dump +=
    case platform[:family]
    when 'debian'
      <<~YAML_DUMP.chomp
        config: #{config}
        enable: #{enable}
        server: isc-dhcp-server
        service: isc-dhcp-server
        service_config: /etc/default/isc-dhcp-server
      YAML_DUMP
    when 'redhat', 'fedora'
      <<~YAML_DUMP.chomp
        config: #{config}
        enable: #{enable}
        server: #{server}
        service: #{service}
        service_config: /etc/systemd/system/dhcpd.service.d/override.conf
      YAML_DUMP
    when 'suse'
      <<~YAML_DUMP.chomp
        config: /etc/dhcpd.conf
        enable: #{enable}
        server: dhcp-server
        service: dhcpd
      YAML_DUMP
    when 'freebsd'
      <<~YAML_DUMP.chomp
        config: /usr/local/etc/dhcpd.conf
        enable: #{enable}
        server: isc-dhcp43-server
        service: isc-dhcpd
        service_config: /etc/rc.conf.d/dhcpd
      YAML_DUMP
    when 'linux'
      case platform[:name]
      when 'arch'
        <<~YAML_DUMP.chomp
          config: /etc/dhcpd.conf
          enable: #{enable}
          server: dhcp
          service: dhcpd4
        YAML_DUMP
      end
    end

  describe file('/tmp/salt_yaml_dump.yaml') do
    its('content') { should include yaml_dump }
  end
end
