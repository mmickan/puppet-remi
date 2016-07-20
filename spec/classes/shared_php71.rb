require 'spec_helper'

shared_context :php71 do
  it do
    should contain_yumrepo('remi-php71').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :php71_7 do
  include_context :php71

  it do
    should contain_yumrepo('remi-php71').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/7/php71/mirror',
      'descr'      => "Remi's PHP 7.1 RPM repository for Enterprise Linux 7 - \$basearch"
    })
  end
end

shared_examples_for :php71_6 do
  include_context :php71

  it do
    should contain_yumrepo('remi-php71').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/6/php71/mirror',
      'descr'      => "Remi's PHP 7.1 RPM repository for Enterprise Linux 6 - \$basearch"
    })
  end
end

shared_examples_for :php71_5 do
  include_context :php71

  it do
    should contain_yumrepo('remi-php71').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/5/php71/mirror',
      'descr'      => "Remi's PHP 7.1 RPM repository for Enterprise Linux 5 - \$basearch"
    })
  end
end
