require 'beaker-rspec/spec_helper'
require 'beaker-rspec/helpers/serverspec'

unless ENV['BEAKER_provision'] == 'no'
  hosts.each do |host|
    install_puppet
  end
end

RSpec.configure do |c|
  # Project root
  proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Readable test descriptions
  c.formatter = :documentation

  # Configure all nodes in nodeset
  c.before :suite do
    # Workaround for stupid puppet_module_install, which will copy the
    # module directory (rather than its contents) to
    # /etc/puppet/modules/remi if that directory already
    # exists
    if ENV['BEAKER_provision'] == 'no'
      on default, shell("rm -rf /etc/puppet/module/remi")
    end

    # Install module to be tested
    puppet_module_install(:source => proj_root, :module_name => 'remi')

    # Install dependencies
    on default, puppet('module', 'install', 'puppetlabs-stdlib'), { :acceptable_exit_codes => [0,1] }
  end
end
