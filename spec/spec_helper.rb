require 'serverspec'
require 'net/ssh'

set :backend, :ssh

setting = ENV

if ENV['ASK_SUDO_PASSWORD']
  begin
    require 'highline/import'
  rescue LoadError
    fail "highline is not available. Try installing it."
  end
  set :sudo_password, ask("Enter sudo password: ") { |q| q.echo = false }
else
  set :sudo_password, setting['sudo_password']
end

host = ENV['host']

options = Net::SSH::Config.for(host)

options[:user] = setting['ssh_user']

set :host,        options[:host_name] || host
set :ssh_options, options
set :request_pty, true

# Disable sudo
# set :disable_sudo, true


# Set environment variables
# set :env, :LANG => 'C', :LC_MESSAGES => 'C'

# Set PATH
# set :path, '/sbin:/usr/local/sbin:$PATH'
