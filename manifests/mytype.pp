#
# Copyright (c) IN2P3 Computing Centre, IN2P3, CNRS
#
# Contributor(s) : ccin2p3
#

# == Define geoip::mytype
#
# This defined type implements 'mytype'
# In this boilerplate the define creates a notify resource
# with the same namevar. You should only define
# unique resources in this code
#
define geoip::mytype (
  $myparam = ''
) {
  notify { "geoip::mytype ${name}(${myparam})": }
}
# vim: ft=puppet
