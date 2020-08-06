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
  Variant[String[1], Array[String[1]]] $package_name,
  Stdlib::Absolutepath $update_command,
  Stdlib::Absolutepath $db_dir,
  Boolean $autoupdate = true,
  String[1] $userid = '999999',
  String[1] $licensekey = '000000000000',
  Array[String[1]] $productids = ['506', '533'],
  Boolean $manage_defaultdb = false,
  String[1] $defaultdb = 'GeoLiteCity',
) {
  class { 'geoip::install': }
  ->class { 'geoip::config': }
  ->Class['geoip']
}
# vim: ft=puppet
