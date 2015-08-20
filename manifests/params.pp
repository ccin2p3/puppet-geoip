#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::params
#
# This class is called from geoip
# It sets platform specific defaults
#
class geoip::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'geoip'
      $service_name = 'geoip'
    }
    'RedHat', 'Amazon': {
      case $::operatingsystemmajrelease {
        '6', '7': {
          $package_name = 'geoip'
          $service_name = 'geoip'
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
