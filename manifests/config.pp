#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::config
#
# This class is called from geoip
# It should include common resource classes
#  e.g. configuration Files
#
class geoip::config {
  file { "/etc/geoip.conf":
    ensure  => present,
    content => template('geoip/conf.erb'),
  }
}
# vim: ft=puppet
