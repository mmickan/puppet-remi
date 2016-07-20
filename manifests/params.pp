#
# == Class: remi::params
#
# Parameter defaults for remi class.
#
# === Parameters
#
# [*proxy*]
#   Proxy server for all yumrepo resources defined in this module.  As this
#   class should not be called directly, this parameter should be set using
#   hiera (remi::params::proxy).
#
# === Usage
#
# This class should not be called directly.
#
class remi::params(
  $proxy = 'absent',
) {

  if getvar('::operatingsystemmajrelease') {
    $os_maj_release = $::operatingsystemmajrelease
  } else {
    $os_versions    = split("${::operatingsystemrelease}", '[.]') # lint:ignore:only_variable_string
    $os_maj_release = $os_versions[0]
  }

  $repo_base = "http://rpms.remirepo.net/enterprise/${os_maj_release}"

  $remi_mirrorlist                          = "${repo_base}/remi/mirror"
  $remi_baseurl                             = 'absent'
  $remi_failovermethod                      = 'priority'
  $remi_proxy                               = $proxy
  $remi_enabled                             = '0'
  $remi_gpgcheck                            = '1'

  $remi_php55_mirrorlist                    = "${repo_base}/php55/mirror"
  $remi_php55_baseurl                       = 'absent'
  $remi_php55_failovermethod                = 'priority'
  $remi_php55_proxy                         = $proxy
  $remi_php55_enabled                       = '0'
  $remi_php55_gpgcheck                      = '1'

  $remi_php56_mirrorlist                    = "${repo_base}/php56/mirror"
  $remi_php56_baseurl                       = 'absent'
  $remi_php56_failovermethod                = 'priority'
  $remi_php56_proxy                         = $proxy
  $remi_php56_enabled                       = '0'
  $remi_php56_gpgcheck                      = '1'

  $remi_test_mirrorlist                     = "${repo_base}/test/mirror"
  $remi_test_baseurl                        = 'absent'
  $remi_test_failovermethod                 = 'priority'
  $remi_test_proxy                          = $proxy
  $remi_test_enabled                        = '0'
  $remi_test_gpgcheck                       = '1'

  $remi_debuginfo_baseurl                   = "${repo_base}/debug-remi/\$basearch"
  $remi_debuginfo_failovermethod            = 'priority'
  $remi_debuginfo_proxy                     = $proxy
  $remi_debuginfo_enabled                   = '0'
  $remi_debuginfo_gpgcheck                  = '1'

  $remi_php55_debuginfo_baseurl             = "${repo_base}/debug-php55/\$basearch"
  $remi_php55_debuginfo_failovermethod      = 'priority'
  $remi_php55_debuginfo_proxy               = $proxy
  $remi_php55_debuginfo_enabled             = '0'
  $remi_php55_debuginfo_gpgcheck            = '1'

  $remi_php56_debuginfo_baseurl             = "${repo_base}/debug-php56/\$basearch"
  $remi_php56_debuginfo_failovermethod      = 'priority'
  $remi_php56_debuginfo_proxy               = $proxy
  $remi_php56_debuginfo_enabled             = '0'
  $remi_php56_debuginfo_gpgcheck            = '1'

  $remi_test_debuginfo_baseurl              = "${repo_base}/debug-test/\$basearch"
  $remi_test_debuginfo_failovermethod       = 'priority'
  $remi_test_debuginfo_proxy                = $proxy
  $remi_test_debuginfo_enabled              = '0'
  $remi_test_debuginfo_gpgcheck             = '1'

  $remi_php70_mirrorlist                    = "${repo_base}/php70/mirror"
  $remi_php70_baseurl                       = 'absent'
  $remi_php70_failovermethod                = 'priority'
  $remi_php70_proxy                         = $proxy
  $remi_php70_enabled                       = '0'
  $remi_php70_gpgcheck                      = '1'

  $remi_php70_debuginfo_baseurl             = "${repo_base}/debug-php70/\$basearch"
  $remi_php70_debuginfo_failovermethod      = 'priority'
  $remi_php70_debuginfo_proxy               = $proxy
  $remi_php70_debuginfo_enabled             = '0'
  $remi_php70_debuginfo_gpgcheck            = '1'

  $remi_php70_test_mirrorlist               = "${repo_base}/test70/mirror"
  $remi_php70_test_baseurl                  = 'absent'
  $remi_php70_test_failovermethod           = 'priority'
  $remi_php70_test_proxy                    = $proxy
  $remi_php70_test_enabled                  = '0'
  $remi_php70_test_gpgcheck                 = '1'

  $remi_php70_test_debuginfo_baseurl        = "${repo_base}/debug-test70/\$basearch"
  $remi_php70_test_debuginfo_failovermethod = 'priority'
  $remi_php70_test_debuginfo_proxy          = $proxy
  $remi_php70_test_debuginfo_enabled        = '0'
  $remi_php70_test_debuginfo_gpgcheck       = '1'

  $remi_php71_mirrorlist                    = "${repo_base}/php71/mirror"
  $remi_php71_baseurl                       = 'absent'
  $remi_php71_failovermethod                = 'priority'
  $remi_php71_proxy                         = $proxy
  $remi_php71_enabled                       = '0'
  $remi_php71_gpgcheck                      = '1'

  $remi_php71_debuginfo_baseurl             = "${repo_base}/debug-php71/\$basearch"
  $remi_php71_debuginfo_failovermethod      = 'priority'
  $remi_php71_debuginfo_proxy               = $proxy
  $remi_php71_debuginfo_enabled             = '0'
  $remi_php71_debuginfo_gpgcheck            = '1'

  $remi_php71_test_mirrorlist               = "${repo_base}/test71/mirror"
  $remi_php71_test_baseurl                  = 'absent'
  $remi_php71_test_failovermethod           = 'priority'
  $remi_php71_test_proxy                    = $proxy
  $remi_php71_test_enabled                  = '0'
  $remi_php71_test_gpgcheck                 = '1'

  $remi_php71_test_debuginfo_baseurl        = "${repo_base}/debug-test71/\$basearch"
  $remi_php71_test_debuginfo_failovermethod = 'priority'
  $remi_php71_test_debuginfo_proxy          = $proxy
  $remi_php71_test_debuginfo_enabled        = '0'
  $remi_php71_test_debuginfo_gpgcheck       = '1'

  $remi_safe_mirrorlist                     = "${repo_base}/safe/mirror"
  $remi_safe_baseurl                        = 'absent'
  $remi_safe_failovermethod                 = 'priority'
  $remi_safe_proxy                          = $proxy
  $remi_safe_enabled                        = '1'
  $remi_safe_gpgcheck                       = '1'

}
