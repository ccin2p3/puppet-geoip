#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::foo::install
#
# This class is called from geoip::foo
# It should provide its package resources
#
class geoip::foo::install {
  package { $geoip::foo::package_name:
    ensure => present,
  }
}
# vim: ft=puppet
