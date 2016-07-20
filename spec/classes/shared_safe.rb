require 'spec_helper'

shared_context :safe do
  it do
    should contain_yumrepo('remi-safe').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '1',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :safe_7 do
  include_context :safe

  it do
    should contain_yumrepo('remi-safe').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/7/safe/mirror',
      'descr'      => "Safe Remi's RPM repository for Enterprise Linux 7 - \$basearch"
    })
  end
end

shared_examples_for :safe_6 do
  include_context :safe

  it do
    should contain_yumrepo('remi-safe').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/6/safe/mirror',
      'descr'      => "Safe Remi's RPM repository for Enterprise Linux 6 - \$basearch"
    })
  end
end

shared_examples_for :safe_5 do
  include_context :safe

  it do
    should contain_yumrepo('remi-safe').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/5/safe/mirror',
      'descr'      => "Safe Remi's RPM repository for Enterprise Linux 5 - \$basearch"
    })
  end
end
