# Overide by platform
config_filename = '/etc/dhcp/dhcpd.conf'
rootgroup = 'root'
case platform[:family]
when 'debian'
  service_config_filename = '/etc/default/isc-dhcp-server'
when 'redhat', 'fedora'
  service_config_filename = '/etc/systemd/system/dhcpd.service.d/override.conf'
when 'suse'
  config_filename = '/etc/dhcpd.conf'
when 'freebsd'
  config_filename = '/usr/local/etc/dhcpd.conf'
  rootgroup = 'wheel'
  service_config_filename = '/etc/rc.conf.d/dhcpd'
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
  end
end

control 'DHCPD service configuration' do
  title 'should be generated properly'

  only_if(
    'the service configuration file is only available on the Debian, RedHat ' \
    '& FreeBSD platform families'
  ) do
    ['debian', 'redhat', 'freebsd'].include?(platform[:family])
  end

  describe file(service_config_filename) do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into rootgroup }
    its('mode') { should cmp '0644' }
  end
end
