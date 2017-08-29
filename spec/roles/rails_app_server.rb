require 'spec_helper'



require 'cookbooks/system_spec'

basic_packages = %w(gcc make git openssl-devel readline-devel zlib-devel ImageMagick ImageMagick-devel curl zip unzip)
basic_packages.each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

require 'cookbooks/sendmail_spec'
require 'cookbooks/nginx_spec'
require 'cookbooks/rbenv_spec'

