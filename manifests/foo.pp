#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::foo
# This class implements functionality 'foo'
# In this boilerplate the class includes 3 subclasses respectively responsible
# for providing Package, configuration and Service resources
#
class geoip::foo (
  $package_name = $geoip::foo::params::package_name,
  $service_name = $geoip::foo::params::service_name,
) inherits geoip::foo::params {

  # validate parameters here

  class { 'geoip::foo::install': } ->
  class { 'geoip::foo::config': } ~>
  class { 'geoip::foo::service': } ->
  Class['geoip::foo']
}
# vim: ft=puppet
