require 'spec_helper'

shared_context :gpgkey do
  it do
    should contain_file("/etc/pki/rpm-gpg/RPM-GPG-KEY-remi").with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0644',
      'source' => "puppet:///modules/remi/RPM-GPG-KEY-remi",
    })
  end

  it do
    should contain_remi__rpm_gpg_key("remi").with({
      'path' => "/etc/pki/rpm-gpg/RPM-GPG-KEY-remi"
    })
  end
end

shared_examples_for :gpgkey_7 do
  include_context :gpgkey
end

shared_examples_for :gpgkey_6 do
  include_context :gpgkey
end

shared_examples_for :gpgkey_5 do
  include_context :gpgkey
end
