
describe service('mysqld') do
  it { should be_enabled }
  it { should be_running }
end

