# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

def github_latest(name, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.6.2"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.1.1"
github "git",         "2.5.0"
github "go",          "1.1.0"
github "homebrew",    "1.9.4"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.8.1"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.2"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# my own shit
# https://github.com/boxen.
github "sysctl",         "1.0.1"
github "firefox",        "1.2.1"
github "flux",           "1.0.1"
github "dropbox",        "1.2.0"
github "tmux",           "1.0.2"
github "alfred",         "1.2.0"
github "virtualbox",     "1.0.13"
github "vagrant",        "3.0.10"
github "iterm2",         "1.1.2"
github "heroku",         "2.1.1"
github "skype",          "1.0.8"
github "googledrive",    "1.0.2"
github "chrome",         "1.1.2"
github "transmission",   "1.1.0"
github "zsh",            "1.0.0"
github "wget",           "1.0.1"
github "vlc",            "1.1.0"
github "onepassword",    "1.1.2"
github "macvim",         "1.0.0"
github "osx",            "2.7.0"
github "seil",           "1.0.2"
github "github_for_mac", "1.0.3"
github "spotify",        "1.0.1"
github "homebrew",       "1.9.4"
github "dash",           "1.0.0"
github "adium",          "1.4.0"

# must maintain
github "postgresql", "3.0.1"
github "mysql",      "1.99.15"
github "redis",      "3.0.3"
github "java",       "1.6.0"
