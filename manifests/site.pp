require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $luser,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::luser}"
  ]
}

File {
  group => 'staff',
  owner => $luser
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => Class['git']
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  include dnsmasq
  include git
  include hub
  include nginx
  include nvm
	include sysctl::ipforwarding
	include xquartz
	include python
	#include java

	# my own shit
	include dropbox
	include alfred
	include virtualbox
	include vagrant
	include iterm2::stable
	include postgresapp
	include heroku
	include pow
	include imagemagick
	include skype
	include googledrive
	include ctags
	include chrome
	include chrome::canary
	include transmission
	#include clojure
	include zsh
	include wget
	include vlc
	include redis
	include mongodb
	include propane
	include onepassword
	include macvim
	include phantomjs

  # fail if FDE is not enabled
  #if $::root_encrypted == 'no' {
    #fail('Please enable full disk encryption and try again')
  #}

  # node versions
  include nodejs::0-4
  include nodejs::0-6
  include nodejs::0-8

  # default ruby versions
  include ruby::1_8_7
  include ruby::1_9_2
  include ruby::1_9_3
  include ruby::2_0_0

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
}
