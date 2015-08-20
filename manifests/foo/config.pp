#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::foo::config
#
# This class is called from geoip::foo
# It should provide its configuration resources
#
class geoip::foo::config {
  file { '/etc/geoip':
    ensure => directory
  } ->
  file { '/etc/geoip/foo.conf':
    ensure  => present,
    content => template('geoip/foo.conf.erb')
  }
}
# vim: ft=puppet
