

describe service('sendmail') do
  it { should_not be_enabled}
  it { should_not be_running}
end

describe package('postfix') do
  it { should be_installed }
end

describe service('postfix') do
  it { should be_enabled }
  it { should be_running }
end

