**This repository has been archived**

This repository is no longer maintained.

# remi

## Description

This module will install the Remi repository.

The following repos will be enabled by default:

  * remi-safe

Other repositories that will be configured by disabled by default:

  * remi
  * remi-debuginfo
  * remi-test
  * remi-test-debuginfo
  * remi-php55
  * remi-php55-debuginfo
  * remi-php55-test
  * remi-php55-test-debuginfo
  * remi-php56
  * remi-php56-debuginfo
  * remi-php56-test
  * remi-php56-test-debuginfo
  * remi-php70
  * remi-php70-debuginfo
  * remi-php70-test
  * remi-php70-test-debuginfo
  * remi-php71
  * remi-php71-debuginfo
  * remi-php71-test
  * remi-php71-test-debuginfo

## Setup

### Setup Requirements

The Remi repository depends on the EPEL repositories being configured.  This
module does not attempt to install EPEL - this should be handled separately.

### Basic Usage

    include ::remi

### Reference

    class { '::remi':
      remi_enabled       => '1',
      remi_php70_enabled => '1',
    }

All supported repositories can be configured with:

  * baseurl
  * failovermethod
  * proxy
  * enabled
  * gpgcheck
  * exclude
  * includepkgs

Additionally, non-debuginfo repositories can be configured with:

  * mirrorlist

## Limitations

  * Testing has only been performed against CentOS 7

## Development

Contributions are welcome.  Open an
[issue](https://github.com/mmickan/puppet-remi/issues) or
[fork](https://github.com/mmickan/puppet-remi/fork) and open a
[pull request](https://github.com/mmickan/puppet-remi/pulls).  Passing tests
are appreciated with pull requests, but not a hard requirement.  Please
ensure your commit message clearly explains the problem your patch solves.

## Contributors

Written by Mark Mickan <mark.mickan@blackboard.com> with heavy influence
from stahma/epel.

## Further Information

  * [remi website](http://rpms.famillecollet.com/)
