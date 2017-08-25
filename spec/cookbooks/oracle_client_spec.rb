
describe file('/etc/profile.d/oracle.sh') do
  it {should exist}
  its(:content) { should match /LD_LIBRARY_PATH/ }
  its(:content) { should match /ORACLE_HOME/ }
  its(:content) { should match /NLS_LANG/}
end

describe command('source /etc/profile.d/oracle.sh;  which sqlplus') do
  its(:stdout) { should match /sqlplus/ }
end

