require 'spec_helper'

shared_context :php70_test_debuginfo do
  it do
    should contain_yumrepo('remi-php70-test-debuginfo').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :php70_test_debuginfo_7 do
  include_context :php70_test_debuginfo

  it do
    should contain_yumrepo('remi-php70-test-debuginfo').with({
      'baseurl' => 'http://rpms.remirepo.net/enterprise/7/debug-test70/$basearch',
      'descr'   => "Remi's PHP 7.0 test RPM repository for Enterprise Linux 7 - \$basearch - debuginfo"
    })
  end
end

shared_examples_for :php70_test_debuginfo_6 do
  include_context :php70_test_debuginfo

  it do
    should contain_yumrepo('remi-php70-test-debuginfo').with({
      'baseurl' => 'http://rpms.remirepo.net/enterprise/6/debug-test70/$basearch',
      'descr'   => "Remi's PHP 7.0 test RPM repository for Enterprise Linux 6 - \$basearch - debuginfo"
    })
  end
end

shared_examples_for :php70_test_debuginfo_5 do
  include_context :php70_test_debuginfo

  it do
    should contain_yumrepo('remi-php70-test-debuginfo').with({
      'baseurl' => 'http://rpms.remirepo.net/enterprise/5/debug-test70/$basearch',
      'descr'   => "Remi's PHP 7.0 test RPM repository for Enterprise Linux 5 - \$basearch - debuginfo"
    })
  end
end
