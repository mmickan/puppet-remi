#
# == Class: remi
#
# Configure the Remi RPM repository.
#
# === Parameters
#
#
# === Example usage
#
#  class { 'remi': }
#
class remi(
  $remi_mirrorlist                          = $remi::params::remi_mirrorlist,
  $remi_baseurl                             = $remi::params::remi_baseurl,
  $remi_failovermethod                      = $remi::params::remi_failovermethod,
  $remi_proxy                               = $remi::params::remi_proxy,
  $remi_enabled                             = $remi::params::remi_enabled,
  $remi_gpgcheck                            = $remi::params::remi_gpgcheck,
  $remi_exclude                             = undef,
  $remi_includepkgs                         = undef,

  $remi_php55_mirrorlist                    = $remi::params::remi_php55_mirrorlist,
  $remi_php55_baseurl                       = $remi::params::remi_php55_baseurl,
  $remi_php55_failovermethod                = $remi::params::remi_php55_failovermethod,
  $remi_php55_proxy                         = $remi::params::remi_php55_proxy,
  $remi_php55_enabled                       = $remi::params::remi_php55_enabled,
  $remi_php55_gpgcheck                      = $remi::params::remi_php55_gpgcheck,
  $remi_php55_exclude                       = undef,
  $remi_php55_includepkgs                   = undef,

  $remi_php56_mirrorlist                    = $remi::params::remi_php56_mirrorlist,
  $remi_php56_baseurl                       = $remi::params::remi_php56_baseurl,
  $remi_php56_failovermethod                = $remi::params::remi_php56_failovermethod,
  $remi_php56_proxy                         = $remi::params::remi_php56_proxy,
  $remi_php56_enabled                       = $remi::params::remi_php56_enabled,
  $remi_php56_gpgcheck                      = $remi::params::remi_php56_gpgcheck,
  $remi_php56_exclude                       = undef,
  $remi_php56_includepkgs                   = undef,

  $remi_test_mirrorlist                     = $remi::params::remi_test_mirrorlist,
  $remi_test_baseurl                        = $remi::params::remi_test_baseurl,
  $remi_test_failovermethod                 = $remi::params::remi_test_failovermethod,
  $remi_test_proxy                          = $remi::params::remi_test_proxy,
  $remi_test_enabled                        = $remi::params::remi_test_enabled,
  $remi_test_gpgcheck                       = $remi::params::remi_test_gpgcheck,
  $remi_test_exclude                        = undef,
  $remi_test_includepkgs                    = undef,

  $remi_debuginfo_baseurl                   = $remi::params::remi_debuginfo_baseurl,
  $remi_debuginfo_failovermethod            = $remi::params::remi_debuginfo_failovermethod,
  $remi_debuginfo_proxy                     = $remi::params::remi_debuginfo_proxy,
  $remi_debuginfo_enabled                   = $remi::params::remi_debuginfo_enabled,
  $remi_debuginfo_gpgcheck                  = $remi::params::remi_debuginfo_gpgcheck,
  $remi_debuginfo_exclude                   = undef,
  $remi_debuginfo_includepkgs               = undef,

  $remi_php55_debuginfo_baseurl             = $remi::params::remi_php55_debuginfo_baseurl,
  $remi_php55_debuginfo_failovermethod      = $remi::params::remi_php55_debuginfo_failovermethod,
  $remi_php55_debuginfo_proxy               = $remi::params::remi_php55_debuginfo_proxy,
  $remi_php55_debuginfo_enabled             = $remi::params::remi_php55_debuginfo_enabled,
  $remi_php55_debuginfo_gpgcheck            = $remi::params::remi_php55_debuginfo_gpgcheck,
  $remi_php55_debuginfo_exclude             = undef,
  $remi_php55_debuginfo_includepkgs         = undef,

  $remi_php56_debuginfo_baseurl             = $remi::params::remi_php56_debuginfo_baseurl,
  $remi_php56_debuginfo_failovermethod      = $remi::params::remi_php56_debuginfo_failovermethod,
  $remi_php56_debuginfo_proxy               = $remi::params::remi_php56_debuginfo_proxy,
  $remi_php56_debuginfo_enabled             = $remi::params::remi_php56_debuginfo_enabled,
  $remi_php56_debuginfo_gpgcheck            = $remi::params::remi_php56_debuginfo_gpgcheck,
  $remi_php56_debuginfo_exclude             = undef,
  $remi_php56_debuginfo_includepkgs         = undef,

  $remi_test_debuginfo_baseurl              = $remi::params::remi_test_debuginfo_baseurl,
  $remi_test_debuginfo_failovermethod       = $remi::params::remi_test_debuginfo_failovermethod,
  $remi_test_debuginfo_proxy                = $remi::params::remi_test_debuginfo_proxy,
  $remi_test_debuginfo_enabled              = $remi::params::remi_test_debuginfo_enabled,
  $remi_test_debuginfo_gpgcheck             = $remi::params::remi_test_debuginfo_gpgcheck,
  $remi_test_debuginfo_exclude              = undef,
  $remi_test_debuginfo_includepkgs          = undef,

  $remi_php70_mirrorlist                    = $remi::params::remi_php70_mirrorlist,
  $remi_php70_baseurl                       = $remi::params::remi_php70_baseurl,
  $remi_php70_failovermethod                = $remi::params::remi_php70_failovermethod,
  $remi_php70_proxy                         = $remi::params::remi_php70_proxy,
  $remi_php70_enabled                       = $remi::params::remi_php70_enabled,
  $remi_php70_gpgcheck                      = $remi::params::remi_php70_gpgcheck,
  $remi_php70_exclude                       = undef,
  $remi_php70_includepkgs                   = undef,

  $remi_php70_debuginfo_baseurl             = $remi::params::remi_php70_debuginfo_baseurl,
  $remi_php70_debuginfo_failovermethod      = $remi::params::remi_php70_debuginfo_failovermethod,
  $remi_php70_debuginfo_proxy               = $remi::params::remi_php70_debuginfo_proxy,
  $remi_php70_debuginfo_enabled             = $remi::params::remi_php70_debuginfo_enabled,
  $remi_php70_debuginfo_gpgcheck            = $remi::params::remi_php70_debuginfo_gpgcheck,
  $remi_php70_debuginfo_exclude             = undef,
  $remi_php70_debuginfo_includepkgs         = undef,

  $remi_php70_test_mirrorlist               = $remi::params::remi_php70_test_mirrorlist,
  $remi_php70_test_baseurl                  = $remi::params::remi_php70_test_baseurl,
  $remi_php70_test_failovermethod           = $remi::params::remi_php70_test_failovermethod,
  $remi_php70_test_proxy                    = $remi::params::remi_php70_test_proxy,
  $remi_php70_test_enabled                  = $remi::params::remi_php70_test_enabled,
  $remi_php70_test_gpgcheck                 = $remi::params::remi_php70_test_gpgcheck,
  $remi_php70_test_exclude                  = undef,
  $remi_php70_test_includepkgs              = undef,

  $remi_php70_test_debuginfo_baseurl        = $remi::params::remi_php70_test_debuginfo_baseurl,
  $remi_php70_test_debuginfo_failovermethod = $remi::params::remi_php70_test_debuginfo_failovermethod,
  $remi_php70_test_debuginfo_proxy          = $remi::params::remi_php70_test_debuginfo_proxy,
  $remi_php70_test_debuginfo_enabled        = $remi::params::remi_php70_test_debuginfo_enabled,
  $remi_php70_test_debuginfo_gpgcheck       = $remi::params::remi_php70_test_debuginfo_gpgcheck,
  $remi_php70_test_debuginfo_exclude        = undef,
  $remi_php70_test_debuginfo_includepkgs    = undef,

  $remi_php71_mirrorlist                    = $remi::params::remi_php71_mirrorlist,
  $remi_php71_baseurl                       = $remi::params::remi_php71_baseurl,
  $remi_php71_failovermethod                = $remi::params::remi_php71_failovermethod,
  $remi_php71_proxy                         = $remi::params::remi_php71_proxy,
  $remi_php71_enabled                       = $remi::params::remi_php71_enabled,
  $remi_php71_gpgcheck                      = $remi::params::remi_php71_gpgcheck,
  $remi_php71_exclude                       = undef,
  $remi_php71_includepkgs                   = undef,

  $remi_php71_debuginfo_baseurl             = $remi::params::remi_php71_debuginfo_baseurl,
  $remi_php71_debuginfo_failovermethod      = $remi::params::remi_php71_debuginfo_failovermethod,
  $remi_php71_debuginfo_proxy               = $remi::params::remi_php71_debuginfo_proxy,
  $remi_php71_debuginfo_enabled             = $remi::params::remi_php71_debuginfo_enabled,
  $remi_php71_debuginfo_gpgcheck            = $remi::params::remi_php71_debuginfo_gpgcheck,
  $remi_php71_debuginfo_exclude             = undef,
  $remi_php71_debuginfo_includepkgs         = undef,

  $remi_php71_test_mirrorlist               = $remi::params::remi_php71_test_mirrorlist,
  $remi_php71_test_baseurl                  = $remi::params::remi_php71_test_baseurl,
  $remi_php71_test_failovermethod           = $remi::params::remi_php71_test_failovermethod,
  $remi_php71_test_proxy                    = $remi::params::remi_php71_test_proxy,
  $remi_php71_test_enabled                  = $remi::params::remi_php71_test_enabled,
  $remi_php71_test_gpgcheck                 = $remi::params::remi_php71_test_gpgcheck,
  $remi_php71_test_exclude                  = undef,
  $remi_php71_test_includepkgs              = undef,

  $remi_php71_test_debuginfo_baseurl        = $remi::params::remi_php71_test_debuginfo_baseurl,
  $remi_php71_test_debuginfo_failovermethod = $remi::params::remi_php71_test_debuginfo_failovermethod,
  $remi_php71_test_debuginfo_proxy          = $remi::params::remi_php71_test_debuginfo_proxy,
  $remi_php71_test_debuginfo_enabled        = $remi::params::remi_php71_test_debuginfo_enabled,
  $remi_php71_test_debuginfo_gpgcheck       = $remi::params::remi_php71_test_debuginfo_gpgcheck,
  $remi_php71_test_debuginfo_exclude        = undef,
  $remi_php71_test_debuginfo_includepkgs    = undef,

  $remi_safe_mirrorlist                     = $remi::params::remi_safe_mirrorlist,
  $remi_safe_baseurl                        = $remi::params::remi_safe_baseurl,
  $remi_safe_failovermethod                 = $remi::params::remi_safe_failovermethod,
  $remi_safe_proxy                          = $remi::params::remi_safe_proxy,
  $remi_safe_enabled                        = $remi::params::remi_safe_enabled,
  $remi_safe_gpgcheck                       = $remi::params::remi_safe_gpgcheck,
  $remi_safe_exclude                        = undef,
  $remi_safe_includepkgs                    = undef,

  $os_maj_release                           = $remi::params::os_maj_release,
) inherits remi::params {

  if "${::osfamily}" == 'RedHat' { # lint:ignore:only_variable_string
    yumrepo { 'remi':
      # lint:ignore:selector_inside_resource
      mirrorlist     => $remi_baseurl ? {
        'absent' => $remi_mirrorlist,
        default  => 'absent',
      },
      # lint:endignore
      baseurl        => $remi_baseurl,
      failovermethod => $remi_failovermethod,
      proxy          => $remi_proxy,
      enabled        => $remi_enabled,
      gpgcheck       => $remi_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's RPM repository for Enterprise Linux ${os_maj_release} - \$basearch",
      exclude        => $remi_exclude,
      includepkgs    => $remi_includepkgs,
    }

    yumrepo { 'remi-php55':
      # lint:ignore:selector_inside_resource
      mirrorlist     => $remi_php55_baseurl ? {
        'absent' => $remi_php55_mirrorlist,
        default  => 'absent',
      },
      # lint:endignore
      baseurl        => $remi_php55_baseurl,
      failovermethod => $remi_php55_failovermethod,
      proxy          => $remi_php55_proxy,
      enabled        => $remi_php55_enabled,
      gpgcheck       => $remi_php55_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 5.5 RPM repository for Enterprise Linux ${os_maj_release} - \$basearch",
      exclude        => $remi_php55_exclude,
      includepkgs    => $remi_php55_includepkgs,
    }

    yumrepo { 'remi-php56':
      # lint:ignore:selector_inside_resource
      mirrorlist     => $remi_php56_baseurl ? {
        'absent' => $remi_php56_mirrorlist,
        default  => 'absent',
      },
      # lint:endignore
      baseurl        => $remi_php56_baseurl,
      failovermethod => $remi_php56_failovermethod,
      proxy          => $remi_php56_proxy,
      enabled        => $remi_php56_enabled,
      gpgcheck       => $remi_php56_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 5.6 RPM repository for Enterprise Linux ${os_maj_release} - \$basearch",
      exclude        => $remi_php56_exclude,
      includepkgs    => $remi_php56_includepkgs,
    }

    yumrepo { 'remi-test':
      # lint:ignore:selector_inside_resource
      mirrorlist     => $remi_test_baseurl ? {
        'absent' => $remi_test_mirrorlist,
        default  => 'absent',
      },
      # lint:endignore
      baseurl        => $remi_test_baseurl,
      failovermethod => $remi_test_failovermethod,
      proxy          => $remi_test_proxy,
      enabled        => $remi_test_enabled,
      gpgcheck       => $remi_test_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's test RPM repository for Enterprise Linux ${os_maj_release} - \$basearch",
      exclude        => $remi_test_exclude,
      includepkgs    => $remi_test_includepkgs,
    }

    yumrepo { 'remi-debuginfo':
      baseurl        => $remi_debuginfo_baseurl,
      failovermethod => $remi_debuginfo_failovermethod,
      proxy          => $remi_debuginfo_proxy,
      enabled        => $remi_debuginfo_enabled,
      gpgcheck       => $remi_debuginfo_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's RPM repository for Enterprise Linux ${os_maj_release} - \$basearch - debuginfo",
      exclude        => $remi_debuginfo_exclude,
      includepkgs    => $remi_debuginfo_includepkgs,
    }

    yumrepo { 'remi-php55-debuginfo':
      baseurl        => $remi_php55_debuginfo_baseurl,
      failovermethod => $remi_php55_debuginfo_failovermethod,
      proxy          => $remi_php55_debuginfo_proxy,
      enabled        => $remi_php55_debuginfo_enabled,
      gpgcheck       => $remi_php55_debuginfo_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 5.5 RPM repository for Enterprise Linux ${os_maj_release} - \$basearch - debuginfo",
      exclude        => $remi_php55_debuginfo_exclude,
      includepkgs    => $remi_php55_debuginfo_includepkgs,
    }

    yumrepo { 'remi-php56-debuginfo':
      baseurl        => $remi_php56_debuginfo_baseurl,
      failovermethod => $remi_php56_debuginfo_failovermethod,
      proxy          => $remi_php56_debuginfo_proxy,
      enabled        => $remi_php56_debuginfo_enabled,
      gpgcheck       => $remi_php56_debuginfo_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 5.6 RPM repository for Enterprise Linux ${os_maj_release} - \$basearch - debuginfo",
      exclude        => $remi_php56_debuginfo_exclude,
      includepkgs    => $remi_php56_debuginfo_includepkgs,
    }

    yumrepo { 'remi-test-debuginfo':
      baseurl        => $remi_test_debuginfo_baseurl,
      failovermethod => $remi_test_debuginfo_failovermethod,
      proxy          => $remi_test_debuginfo_proxy,
      enabled        => $remi_test_debuginfo_enabled,
      gpgcheck       => $remi_test_debuginfo_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's test RPM repository for Enterprise Linux ${os_maj_release} - \$basearch - debuginfo",
      exclude        => $remi_test_debuginfo_exclude,
      includepkgs    => $remi_test_debuginfo_includepkgs,
    }

    yumrepo { 'remi-php70':
      # lint:ignore:selector_inside_resource
      mirrorlist     => $remi_php70_baseurl ? {
        'absent' => $remi_php70_mirrorlist,
        default  => 'absent',
      },
      # lint:endignore
      baseurl        => $remi_php70_baseurl,
      failovermethod => $remi_php70_failovermethod,
      proxy          => $remi_php70_proxy,
      enabled        => $remi_php70_enabled,
      gpgcheck       => $remi_php70_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 7.0 RPM repository for Enterprise Linux ${os_maj_release} - \$basearch",
      exclude        => $remi_php70_exclude,
      includepkgs    => $remi_php70_includepkgs,
    }

    yumrepo { 'remi-php70-debuginfo':
      baseurl        => $remi_php70_debuginfo_baseurl,
      failovermethod => $remi_php70_debuginfo_failovermethod,
      proxy          => $remi_php70_debuginfo_proxy,
      enabled        => $remi_php70_debuginfo_enabled,
      gpgcheck       => $remi_php70_debuginfo_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 7.0 RPM repository for Enterprise Linux ${os_maj_release} - \$basearch - debuginfo",
      exclude        => $remi_php70_debuginfo_exclude,
      includepkgs    => $remi_php70_debuginfo_includepkgs,
    }

    yumrepo { 'remi-php70-test':
      # lint:ignore:selector_inside_resource
      mirrorlist     => $remi_php70_test_baseurl ? {
        'absent' => $remi_php70_test_mirrorlist,
        default  => 'absent',
      },
      # lint:endignore
      baseurl        => $remi_php70_test_baseurl,
      failovermethod => $remi_php70_test_failovermethod,
      proxy          => $remi_php70_test_proxy,
      enabled        => $remi_php70_test_enabled,
      gpgcheck       => $remi_php70_test_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 7.0 test RPM repository for Enterprise Linux ${os_maj_release} - \$basearch",
      exclude        => $remi_php70_test_exclude,
      includepkgs    => $remi_php70_test_includepkgs,
    }

    yumrepo { 'remi-php70-test-debuginfo':
      baseurl        => $remi_php70_test_debuginfo_baseurl,
      failovermethod => $remi_php70_test_debuginfo_failovermethod,
      proxy          => $remi_php70_test_debuginfo_proxy,
      enabled        => $remi_php70_test_debuginfo_enabled,
      gpgcheck       => $remi_php70_test_debuginfo_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 7.0 test RPM repository for Enterprise Linux ${os_maj_release} - \$basearch - debuginfo",
      exclude        => $remi_php70_test_debuginfo_exclude,
      includepkgs    => $remi_php70_test_debuginfo_includepkgs,
    }

    yumrepo { 'remi-php71':
      # lint:ignore:selector_inside_resource
      mirrorlist     => $remi_php71_baseurl ? {
        'absent' => $remi_php71_mirrorlist,
        default  => 'absent',
      },
      # lint:endignore
      baseurl        => $remi_php71_baseurl,
      failovermethod => $remi_php71_failovermethod,
      proxy          => $remi_php71_proxy,
      enabled        => $remi_php71_enabled,
      gpgcheck       => $remi_php71_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 7.1 RPM repository for Enterprise Linux ${os_maj_release} - \$basearch",
      exclude        => $remi_php71_exclude,
      includepkgs    => $remi_php71_includepkgs,
    }

    yumrepo { 'remi-php71-debuginfo':
      baseurl        => $remi_php71_debuginfo_baseurl,
      failovermethod => $remi_php71_debuginfo_failovermethod,
      proxy          => $remi_php71_debuginfo_proxy,
      enabled        => $remi_php71_debuginfo_enabled,
      gpgcheck       => $remi_php71_debuginfo_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 7.1 RPM repository for Enterprise Linux ${os_maj_release} - \$basearch - debuginfo",
      exclude        => $remi_php71_debuginfo_exclude,
      includepkgs    => $remi_php71_debuginfo_includepkgs,
    }

    yumrepo { 'remi-php71-test':
      # lint:ignore:selector_inside_resource
      mirrorlist     => $remi_php71_test_baseurl ? {
        'absent' => $remi_php71_test_mirrorlist,
        default  => 'absent',
      },
      # lint:endignore
      baseurl        => $remi_php71_test_baseurl,
      failovermethod => $remi_php71_test_failovermethod,
      proxy          => $remi_php71_test_proxy,
      enabled        => $remi_php71_test_enabled,
      gpgcheck       => $remi_php71_test_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 7.1 test RPM repository for Enterprise Linux ${os_maj_release} - \$basearch",
      exclude        => $remi_php71_test_exclude,
      includepkgs    => $remi_php71_test_includepkgs,
    }

    yumrepo { 'remi-php71-test-debuginfo':
      baseurl        => $remi_php71_test_debuginfo_baseurl,
      failovermethod => $remi_php71_test_debuginfo_failovermethod,
      proxy          => $remi_php71_test_debuginfo_proxy,
      enabled        => $remi_php71_test_debuginfo_enabled,
      gpgcheck       => $remi_php71_test_debuginfo_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Remi's PHP 7.1 test RPM repository for Enterprise Linux ${os_maj_release} - \$basearch - debuginfo",
      exclude        => $remi_php71_test_debuginfo_exclude,
      includepkgs    => $remi_php71_test_debuginfo_includepkgs,
    }

    yumrepo { 'remi-safe':
      # lint:ignore:selector_inside_resource
      mirrorlist     => $remi_safe_baseurl ? {
        'absent' => $remi_safe_mirrorlist,
        default  => 'absent',
      },
      # lint:endignore
      baseurl        => $remi_safe_baseurl,
      failovermethod => $remi_safe_failovermethod,
      proxy          => $remi_safe_proxy,
      enabled        => $remi_safe_enabled,
      gpgcheck       => $remi_safe_gpgcheck,
      gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
      descr          => "Safe Remi's RPM repository for Enterprise Linux ${os_maj_release} - \$basearch",
      exclude        => $remi_safe_exclude,
      includepkgs    => $remi_safe_includepkgs,
    }

    file { '/etc/pki/rpm-gpg/RPM-GPG-KEY-remi':
      ensure => 'present',
      owner  => 'root',
      group  => 'root',
      mode   => '0644',
      source => 'puppet:///modules/remi/RPM-GPG-KEY-remi',
    }

    remi::rpm_gpg_key{ 'remi':
      path   => '/etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
    } -> Yumrepo <| tag == 'remi' |>

  } else {
    notice("Your operating system ${::operatingsystem} will not have the Remi repository applied")
  }

}
