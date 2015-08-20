#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::foo::params
#
# This class is called from geoip::foo
# It sets platform specific defaults
#
class geoip::foo::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'geoip-foo'
      $service_name = 'geoip-foo'
    }
    'RedHat', 'Amazon': {
      case $::operatingsystemmajrelease {
        '6', '7': {
          $package_name = 'geoip-foo'
          $service_name = 'geoip-foo'
        }
        default: {
          fail("operatingsystemmajrelease `${::operatingsystemmajrelease}` not supported")
        }
      }
    }
    default: {
      fail("osfamily `${::osfamily}` not supported")
    }
  }
}

# vim: ft=puppet
