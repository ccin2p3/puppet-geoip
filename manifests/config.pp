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
  include ::geoip
  $productids = $::geoip::productids
  $licensekey = $::geoip::licensekey
  $userid = $::geoip::userid
  file { '/etc/GeoIP.conf':
    ensure  => present,
    content => template('geoip/conf.erb'),
  }
  if ($::geoip::autoupdate) {
    include ::geoip::update
  }
  if ($::geoip::manage_defaultdb) {
    include ::geoip::defaultdb
  }
}
# vim: ft=puppet
