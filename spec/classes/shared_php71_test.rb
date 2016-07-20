require 'spec_helper'

shared_context :php71_test do
  it do
    should contain_yumrepo('remi-php71-test').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :php71_test_7 do
  include_context :php71_test

  it do
    should contain_yumrepo('remi-php71-test').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/7/test71/mirror',
      'descr'      => "Remi's PHP 7.1 test RPM repository for Enterprise Linux 7 - \$basearch"
    })
  end
end

shared_examples_for :php71_test_6 do
  include_context :php71_test

  it do
    should contain_yumrepo('remi-php71-test').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/6/test71/mirror',
      'descr'      => "Remi's PHP 7.1 test RPM repository for Enterprise Linux 6 - \$basearch"
    })
  end
end

shared_examples_for :php71_test_5 do
  include_context :php71_test

  it do
    should contain_yumrepo('remi-php71-test').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/5/test71/mirror',
      'descr'      => "Remi's PHP 7.1 test RPM repository for Enterprise Linux 5 - \$basearch"
    })
  end
end
