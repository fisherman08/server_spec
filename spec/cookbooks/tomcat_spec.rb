if os[:family] == 'amazon'
  package_name = "tomcat#{ENV['tomcat_version']}"
else
  package_name = 'tomcat'
end

tomcat_location = "/etc/#{package_name}"

describe package(package_name) do
  it { should be_installed }
end

describe service(package_name) do
  it { should be_enabled }
  it { should be_running }
end

describe file("/etc/logrotate.d/#{package_name}") do
  its(:content) { should match /daily/ }
end
