
describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe file("/etc/logrotate.d/nginx") do
  its(:content) { should match /daily/ }
end

describe file('/home/nginx/www') do
  it {should exist}
end

describe port(80) do
  it { should be_listening }
end

describe port(443) do
  it { should be_listening }
end
