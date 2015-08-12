# == Class: base
#
# Base Puppet module for the Computer Science department at Western University.
# Currently, it just installs a number of packages common to all systems.
#
# === Parameters
#
# [*packages*]
#   Array of packages to install.
#
# === Authors
#
# Jeff Shantz <jeff@csd.uwo.ca>
#
# === Copyright
#
# Copyright 2015, Western University, unless otherwise noted.
#
class base ($packages = $base::params::packages) inherits base::params {
  include base::install
}
