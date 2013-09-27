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

github "boxen", "3.0.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.3.2"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.10"
github "repository", "2.2.0"
github "ruby",       "6.3.4"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# my own shit
# https://github.com/boxen.
github "sysctl", "1.0.0"
github "xquartz", "1.0.0"
github "java", "1.1.2"
github "firefox", "1.1.3"
github "clojure", "1.2.0"
github "flux", "1.1.0"

github "dropbox", "1.1.1"
github "tmux", "1.0.2"
github "alfred", "1.1.4"
github "virtualbox", "1.0.6"
github "vagrant", "2.0.12"
github "iterm2", "1.0.3"
github "heroku", "2.0.0"
github "pow", "1.0.0"
github "imagemagick", "1.2.1"
github "skype", "1.0.4"
github "googledrive", "1.0.2"
github "ctags", "1.0.0"
github "chrome", "1.1.1"
github "transmission", "1.0.0"
github "zsh", "1.0.0"
github "wget", "1.0.0"
github "vlc", "1.0.5"
github "redis", "1.0.0"
github "mongodb", "1.0.4"
github "propane", "1.0.0"
github "onepassword", "1.0.2"
github "macvim", "1.0.0"
github "python", "1.2.1"
github "postgresql", "2.0.1"
github "phantomjs", "2.0.2"
github "osx", "1.6.0"
github "keyremap4macbook", "1.0.4"
github "github_for_mac", "1.0.1"

mod "pckeyboardhack", :git => "https://github.com/smh/puppet-pckeyboardhack.git"

mod "property_list_key", "0.1.0", :github_tarball => "glarizza/puppet-property_list_key"
