require 'spec_helper'

describe 'remi::rpm_gpg_key' do
  let :facts do
    default_facts
  end

  let :title do
    'remi'
  end

  let :params do
    { :path => "/key" }
  end

  it do
    should contain_exec('import-remi').with({
      'path'      => '/bin:/usr/bin:/sbin:/usr/sbin',
      'command'   => "rpm --import /key",
      'unless'    => "rpm -q gpg-pubkey-$(echo $(gpg --throw-keyids --keyid-format short < /key) | cut --characters=11-18 | tr '[A-Z]' '[a-z]')",
      'require'   => "File[/key]",
      'logoutput' => 'on_failure',
    })
  end
end
