require 'spec_helper'

shared_context :test do
  it do
    should contain_yumrepo('remi-test').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :test_7 do
  include_context :test

  it do
    should contain_yumrepo('remi-test').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/7/test/mirror',
      'descr'      => "Remi's test RPM repository for Enterprise Linux 7 - \$basearch"
    })
  end
end

shared_examples_for :test_6 do
  include_context :test

  it do
    should contain_yumrepo('remi-test').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/6/test/mirror',
      'descr'      => "Remi's test RPM repository for Enterprise Linux 6 - \$basearch"
    })
  end
end

shared_examples_for :test_5 do
  include_context :test

  it do
    should contain_yumrepo('remi-test').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/5/test/mirror',
      'descr'      => "Remi's test RPM repository for Enterprise Linux 5 - \$basearch"
    })
  end
end
