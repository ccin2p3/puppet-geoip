#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::install
#
# This class is called from geoip
# It ensures Package resources are present
#
class geoip::install {
  include ::geoip
  package { $geoip::package_name:
    ensure => present,
  }
}
# vim: ft=puppet
