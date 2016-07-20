require 'spec_helper'

shared_context :base_debuginfo do
  it do
    should contain_yumrepo('remi-debuginfo').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :base_debuginfo_7 do
  include_context :base_debuginfo

  it do
    should contain_yumrepo('remi-debuginfo').with({
      'baseurl' => 'http://rpms.remirepo.net/enterprise/7/debug-remi/$basearch',
      'descr'   => "Remi's RPM repository for Enterprise Linux 7 - \$basearch - debuginfo"
    })
  end
end

shared_examples_for :base_debuginfo_6 do
  include_context :base_debuginfo

  it do
    should contain_yumrepo('remi-debuginfo').with({
      'baseurl' => 'http://rpms.remirepo.net/enterprise/6/debug-remi/$basearch',
      'descr'   => "Remi's RPM repository for Enterprise Linux 6 - \$basearch - debuginfo"
    })
  end
end

shared_examples_for :base_debuginfo_5 do
  include_context :base_debuginfo

  it do
    should contain_yumrepo('remi-debuginfo').with({
      'baseurl' => 'http://rpms.remirepo.net/enterprise/5/debug-remi/$basearch',
      'descr'   => "Remi's RPM repository for Enterprise Linux 5 - \$basearch - debuginfo"
    })
  end
end
