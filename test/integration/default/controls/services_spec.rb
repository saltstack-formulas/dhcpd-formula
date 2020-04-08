# Overide by platform
service_name =
  case platform[:family]
  when 'debian'
    'isc-dhcp-server'
  when 'redhat', 'fedora', 'suse'
    'dhcpd'
  when 'freebsd'
    'isc-dhcpd'
  when 'linux'
    case platform[:name]
    when 'arch'
      'dhcpd4'
    end
  end

control 'DHCPD service' do
  impact 0.5
  title 'should be installed but not enabled or running'

  describe service(service_name) do
    it { should be_installed }
    it { should_not be_enabled }
    it { should_not be_running }
  end
end
