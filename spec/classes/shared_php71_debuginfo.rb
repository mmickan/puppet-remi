require 'spec_helper'

shared_context :php71_debuginfo do
  it do
    should contain_yumrepo('remi-php71-debuginfo').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :php71_debuginfo_7 do
  include_context :php71_debuginfo

  it do
    should contain_yumrepo('remi-php71-debuginfo').with({
      'baseurl' => 'http://rpms.remirepo.net/enterprise/7/debug-php71/$basearch',
      'descr'   => "Remi's PHP 7.1 RPM repository for Enterprise Linux 7 - \$basearch - debuginfo"
    })
  end
end

shared_examples_for :php71_debuginfo_6 do
  include_context :php71_debuginfo

  it do
    should contain_yumrepo('remi-php71-debuginfo').with({
      'baseurl' => 'http://rpms.remirepo.net/enterprise/6/debug-php71/$basearch',
      'descr'   => "Remi's PHP 7.1 RPM repository for Enterprise Linux 6 - \$basearch - debuginfo"
    })
  end
end

shared_examples_for :php71_debuginfo_5 do
  include_context :php71_debuginfo

  it do
    should contain_yumrepo('remi-php71-debuginfo').with({
      'baseurl' => 'http://rpms.remirepo.net/enterprise/5/debug-php71/$basearch',
      'descr'   => "Remi's PHP 7.1 RPM repository for Enterprise Linux 5 - \$basearch - debuginfo"
    })
  end
end
