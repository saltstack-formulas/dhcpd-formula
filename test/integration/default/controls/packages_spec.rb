# frozen_string_literal: true

# Overide by platform
package_name =
  case platform[:family]
  when 'debian'
    'isc-dhcp-server'
  when 'redhat'
    'dhcp'
  when 'fedora', 'suse'
    'dhcp-server'
  when 'freebsd'
    'isc-dhcp43-server'
  when 'linux'
    case platform[:name]
    when 'arch'
      'dhcp'
    end
  end

control 'DHCPD package' do
  title 'should be installed'

  describe package(package_name) do
    it { should be_installed }
  end
end
