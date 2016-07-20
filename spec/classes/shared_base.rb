require 'spec_helper'

shared_context :base do
  it do
    should contain_yumrepo('remi').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :base_7 do
  include_context :base

  it do
    should contain_yumrepo('remi').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/7/remi/mirror',
      'descr'      => "Remi's RPM repository for Enterprise Linux 7 - \$basearch"
    })
  end
end

shared_examples_for :base_6 do
  include_context :base

  it do
    should contain_yumrepo('remi').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/6/remi/mirror',
      'descr'      => "Remi's RPM repository for Enterprise Linux 6 - \$basearch"
    })
  end
end

shared_examples_for :base_5 do
  include_context :base

  it do
    should contain_yumrepo('remi').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/5/remi/mirror',
      'descr'      => "Remi's RPM repository for Enterprise Linux 5 - \$basearch"
    })
  end
end
