#
# == Define: remi::rpm_gpg_key
#
# Import an RPM GPG key
#
# === Parameters
#
# [*path*]
#   Path of the RPM GPG key to import.
#
# === Example usage
#
#  remi::rpm_gpg_key { 'RPM-GPG-KEY-remi':
#    path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-remi',
#  }
#
define remi::rpm_gpg_key(
  $path,
) {

  # given the path to a key, see if it is imported, if not, import it
  exec { "import-${name}":
    path      => '/bin:/usr/bin:/sbin:/usr/sbin',
    command   => "rpm --import ${path}",
    unless    => "rpm -q gpg-pubkey-$(echo $(gpg --throw-keyids --keyid-format short < ${path}) | cut --characters=11-18 | tr '[A-Z]' '[a-z]')",
    require   => File[$path],
    logoutput => 'on_failure',
  }

}
