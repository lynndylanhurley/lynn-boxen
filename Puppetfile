# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

def github_latest(name, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github_latest "boxen"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

#github "dnsmasq",    "1.0.0"
#github "gcc",        "1.0.0"
#github "git",        "1.2.2"
#github "homebrew",   "1.1.2"
#github "hub",        "1.0.0"
#github "inifile",    "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
#github "nginx",      "1.4.0"
#github "nodejs",     "2.2.0"
#github "repository", "2.0.2"
#github "ruby",       "4.2.0"
#github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
#github "sudo",       "1.0.0"

github_latest "dnsmasq"
github_latest "gcc"
github_latest "git"
github_latest "homebrew"
github_latest "hub"
github_latest "inifile", :repo => "cprice-puppet/puppetlabs-inifile"
github_latest "nginx"
github_latest "nodejs"
github_latest "repository"
github_latest "ruby"
github_latest "stdlib", :repo => "puppetlabs/puppetlabs-stdlib"
github_latest "sudo"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github_latest "sysctl"
github_latest "xquartz"
github_latest "java"
github_latest "firefox"
github_latest "clojure"
github_latest "flux"

# my own shit
github_latest "dropbox"
github_latest "tmux"
github_latest "alfred"
github_latest "virtualbox"
github_latest "vagrant"
github_latest "iterm2"
github_latest "heroku"
github_latest "pow"
github_latest "imagemagick"
github_latest "skype"
github_latest "googledrive"
github_latest "ctags"
github_latest "chrome"
github_latest "transmission"
github_latest "zsh"
github_latest "wget"
github_latest "vlc"
github_latest "redis"
github_latest "mongodb"
github_latest "propane"
github_latest "osx"
github_latest "onepassword"
github_latest "macvim"
github_latest "python"
github_latest "postgresapp"
github_latest "phantomjs"
github_latest "osx"

mod "evernote", :git => "https://github.com/jasonamyers/puppet-evernote.git"

