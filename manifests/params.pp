# == Class: base::params
#
# Default parameter values for the base module
#
class base::params {

  case $::osfamily {

    'redhat': {

      $packages = [
        'deltarpm',
        'ncurses-term',
        'setroubleshoot-server',
        'tmux',
        'vim-enhanced',
        ]

    }

    default: {
      fail('Your OS is not supported by this module.')
    }

  }

}
