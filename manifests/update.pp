#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::cron
# This class implements the automatic geoip database update
#
class geoip::update {
  cron { 'geoip':
    command => $geoip::update_command,
    user    => '0',
    hour    => '4',
    minute  => '44',
  }
}
# vim: ft=puppet
