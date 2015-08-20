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
      $package_name = ['geoip-bin', 'geoip-database', 'geoipupdate']
      $update_command = '/usr/bin/geoipupdate'
    }
    'RedHat', 'Amazon': {
      case $::operatingsystemmajrelease {
        '6', '7': {
          $package_name = ['GeoIP']
          $update_command = '/bin/geoipupdate'
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
