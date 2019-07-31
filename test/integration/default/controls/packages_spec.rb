# Overide by OS
case os[:family]
when 'arch', 'redhat'
  package_name = 'dhcp'
when 'debian'
  package_name = 'isc-dhcp-server'
when 'freebsd'
  package_name = 'isc-dhcp43-server'
when 'suse'
  package_name = 'dhcp-server'
end

control 'DHCPD package' do
  title 'should be installed'

  describe package(package_name) do
    it { should be_installed }
  end
end
