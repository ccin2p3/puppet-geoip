#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::service
#
# This class is called from geoip
# It ensures the service is running
#
class geoip::service {

  service { $geoip::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
# vim: ft=puppet
