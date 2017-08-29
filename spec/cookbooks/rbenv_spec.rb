
describe file('/etc/profile.d/rbenv.sh') do
  it {should exist}
end

describe command('source /etc/profile.d/rbenv.sh;  rbenv global') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /2\./ }
end