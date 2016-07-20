require 'spec_helper'

shared_context :php55 do
  it do
    should contain_yumrepo('remi-php55').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :php55_7 do
  include_context :php55

  it do
    should contain_yumrepo('remi-php55').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/7/php55/mirror',
      'descr'      => "Remi's PHP 5.5 RPM repository for Enterprise Linux 7 - \$basearch"
    })
  end
end

shared_examples_for :php55_6 do
  include_context :php55

  it do
    should contain_yumrepo('remi-php55').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/6/php55/mirror',
      'descr'      => "Remi's PHP 5.5 RPM repository for Enterprise Linux 6 - \$basearch"
    })
  end
end

shared_examples_for :php55_5 do
  include_context :php55

  it do
    should contain_yumrepo('remi-php55').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/5/php55/mirror',
      'descr'      => "Remi's PHP 5.5 RPM repository for Enterprise Linux 5 - \$basearch"
    })
  end
end
