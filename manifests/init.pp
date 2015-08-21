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
  $update_command = $geoip::params::update_command,
  $db_dir = $geoip::params::db_dir,
  $autoupdate = true,
  $userid = '999999',
  $licensekey = '000000000000',
  $productids = ['506', '533'],
  $manage_defaultdb = false,
  $defaultdb = 'GeoLiteCity',
) inherits geoip::params {

  validate_string($defaultdb)
  validate_bool($manage_defaultdb)
  validate_array($productids)
  validate_string($licensekey)
  validate_string($userid)
  validate_bool($autoupdate)
  validate_absolute_path($db_dir)
  validate_absolute_path($update_command)

  class { 'geoip::install': } ->
  class { 'geoip::config': } ->
  Class['geoip']
}
# vim: ft=puppet
