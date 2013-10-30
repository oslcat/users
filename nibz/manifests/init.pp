# == Class: nibz
#
# Full description of class nibz here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { nibz:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2013 Your name here, unless otherwise noted.
#
class nibz (
   $home = '/home/nibz'
){

  user { 'nibz':
    uid        => '1861',
    managehome => true,
    ensure     => present,
    home       => $home,
    shell      => '/bin/bash',
    comment    => 'Spencer O Krum',
  }



  ssh_authorized_key { 'nibz@laptop':
    user => 'nibz',
    type => 'rsa',
    key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQCbtnEtd3zkvGFnBtzJX+VUY60W6XJ5RPfTpxXe5cBXrLKNmFywv2ytDclQKCo1PefhTZJed+AiiZs80aVhSUq2lvFmDdcAhLwT7hY/KssKV3Jspc6ZQiCKqX6KW5z2zP8SmSsaCZgD+oITa+BshtgkUb5iYGu0Ewsx7GPowbTTPRhf1vFLEicbPj78oSpc2nYnCa1wYwZTX7ZxeErdpOO5CRilqQmK1hWrzA0CZtRRAtmSanOfLVakIhaCwO0kvvXpkl7aSzFkJQeh3x8VS55UBR0poSPOvu0KcwME/cO11FNnMt+DRsoAixlQKkfLTZCb85daYWLGa/urfO3uEojCQkqHE9s8IVeR9EEP+25iNFy96CH+Ls4LFjAA/1Wz6s7MArvHt92SD+o7VdhSJRhM4oV/1xvhL5pRS6h0b3ZhPFFMREQq1EYqS4cnOBAp2VU6jXecbQRn00xOjUBgqoSRJp4MNH44vFCjO/vKnlSNYl8Y6u1NW/kSTdHajGnZATSRiRZ9HTqAL6fb8qXrQ6ulGyGtr5MO4vw1XwFQSgbuaP/KtbwY/lAI3WYc3AsPv1zFzwES2roYLEHzjP41BWM4gQOToPHy3/sdHihBAb4bzSeERuxdTxACiB4X6YmYSk8OTwvLNySk/PzjhMsN5fYpbfCm7xelZA4frl9rv/RUTQ==',
    require => User['nibz'],
  }
  

}
