#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Class geoip::foo::service
#
# This class is called from geoip::foo
# It ensures the foo service is running
#
class geoip::foo::service {
  service { $geoip::foo::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
# vim: ft=puppet
