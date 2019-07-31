# Overide by OS
case os[:family]
when 'arch'
  service_name = 'dhcpd4'
when 'debian'
  service_name = 'isc-dhcp-server'
when 'freebsd'
  service_name = 'isc-dhcpd'
when 'redhat', 'suse'
  service_name = 'dhcpd'
end

control 'DHCPD service' do
  impact 0.5
  title 'should be running and enabled'

  describe service(service_name) do
    it { should be_installed }
    it { should_not be_enabled }
    it { should_not be_running }
  end
end
