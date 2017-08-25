

# Timezone
describe command('date') do
  its(:stdout) { should match ENV['timezone'] }
end

# SELinux disabled?
describe selinux do
  it { should be_disabled }
end

describe file('/etc/selinux/config') do
  its(:content) { should match /SELINUX=disabled/ }
end

