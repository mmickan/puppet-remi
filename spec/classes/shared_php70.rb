require 'spec_helper'

shared_context :php70 do
  it do
    should contain_yumrepo('remi-php70').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :php70_7 do
  include_context :php70

  it do
    should contain_yumrepo('remi-php70').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/7/php70/mirror',
      'descr'      => "Remi's PHP 7.0 RPM repository for Enterprise Linux 7 - \$basearch"
    })
  end
end

shared_examples_for :php70_6 do
  include_context :php70

  it do
    should contain_yumrepo('remi-php70').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/6/php70/mirror',
      'descr'      => "Remi's PHP 7.0 RPM repository for Enterprise Linux 6 - \$basearch"
    })
  end
end

shared_examples_for :php70_5 do
  include_context :php70

  it do
    should contain_yumrepo('remi-php70').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/5/php70/mirror',
      'descr'      => "Remi's PHP 7.0 RPM repository for Enterprise Linux 5 - \$basearch"
    })
  end
end
