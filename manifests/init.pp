#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class: geoip
#
# Full description of class geoip here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class geoip (
  $package_name = $geoip::params::package_name,
  $service_name = $geoip::params::service_name,
) inherits geoip::params {

  # validate parameters here

  class { 'geoip::install': } ->
  class { 'geoip::config': } ~>
  class { 'geoip::service': } ->
  Class['geoip']
}
# vim: ft=puppet
