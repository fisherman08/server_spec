

describe command('which ruby') do
  its(:exit_status) { should eq 0 }
end