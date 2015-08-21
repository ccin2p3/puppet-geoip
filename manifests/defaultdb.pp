#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::defaultdb
# This class implements the default geoip database
#
class geoip::defaultdb {
  include ::geoip
  file { 'geoip_defaultdb_link':
    ensure => link,
    path   => "${::geoip::db_dir}/GeoIP.dat",
    owner  => '0',
    group  => '0',
    target => "${::geoip::db_dir}/${::geoip::defaultdb}.dat",
  }
}
# vim: ft=puppet
