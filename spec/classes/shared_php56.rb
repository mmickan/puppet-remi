require 'spec_helper'

shared_context :php56 do
  it do
    should contain_yumrepo('remi-php56').with({
      'failovermethod' => 'priority',
      'proxy'          => 'absent',
      'enabled'        => '0',
      'gpgcheck'       => '1',
      'gpgkey'         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    })
  end
end

shared_examples_for :php56_7 do
  include_context :php56

  it do
    should contain_yumrepo('remi-php56').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/7/php56/mirror',
      'descr'      => "Remi's PHP 5.6 RPM repository for Enterprise Linux 7 - \$basearch"
    })
  end
end

shared_examples_for :php56_6 do
  include_context :php56

  it do
    should contain_yumrepo('remi-php56').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/6/php56/mirror',
      'descr'      => "Remi's PHP 5.6 RPM repository for Enterprise Linux 6 - \$basearch"
    })
  end
end

shared_examples_for :php56_5 do
  include_context :php56

  it do
    should contain_yumrepo('remi-php56').with({
      'mirrorlist' => 'http://rpms.remirepo.net/enterprise/5/php56/mirror',
      'descr'      => "Remi's PHP 5.6 RPM repository for Enterprise Linux 5 - \$basearch"
    })
  end
end
