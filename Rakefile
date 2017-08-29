require 'rake'
require 'rspec/core/rake_task'
require 'yaml'
require 'pp'


task :spec    => 'spec:each'
task :default => :spec

namespace :spec do

  task :default => :each

  task :each  do |task, args|

    ENV['ssh_user'] = ENV['user']
    ENV['sudo_password'] = ENV['sudo_password']
    ENV['timezone']       ||= 'JST'
    ENV['tomcat_version'] ||= '7'

    desc "Run serverspec tests to #{ENV['host']} as #{ENV['user']}"

    RSpec::Core::RakeTask.new do |t|
      t.pattern = "spec/roles/#{ENV['role']}.rb"
    end
  end

  task :all do |task, args|
    p 'HAHAHA you mean "bundle exec rake spec:each" ?'
  end


end
