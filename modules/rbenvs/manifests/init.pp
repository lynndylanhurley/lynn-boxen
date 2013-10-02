class rbenvs {
  # default ruby versions
  require ruby::1_9_3
  require ruby::2_0_0
  require ruby::2_0_0_p195
  require ruby::2_0_0_p247

  # rbenv
  class { 'ruby::global':
    version => '2.0.0-p247'
  }

  ruby::gem { "pry for ${version}":
    gem     => 'pry',
    ruby    => $version
  }

  ruby::gem { "interactive_editor for ${version}":
    gem     => 'interactive_editor',
    ruby    => $version
  }

  ruby::gem { "wirble for ${version}":
    gem     => 'wirble',
    ruby    => $version
  }

  ruby::gem { "tunnels for ${version}":
    gem     => 'tunnels',
    ruby    => $version
  }

  ruby::gem { "powder for ${version}":
    gem     => 'powder',
    ruby    => $version
  }

  ruby::gem { "lunchy for ${version}":
    gem     => 'lunchy',
    ruby    => $version
  }

  ruby::gem { "redcarpet for ${version}":
    gem     => 'redcarpet',
    ruby    => $version
  }

  ruby::gem { "CoffeeTags for ${version}":
    gem     => 'CoffeeTags',
    ruby    => $version
  }

  ruby::gem { "zeus for ${version}":
    gem     => 'zeus',
    ruby    => $version
  }

  ruby::gem { "pygments.rb for ${version}":
    gem     => 'pygments.rb',
    ruby    => $version
  }

  ruby::gem { "jekyll for ${version}":
    gem     => 'jekyll',
    ruby    => $version
  }

  ruby::gem { "tmuxinator for ${version}":
    gem     => 'tmuxinator',
    ruby    => $version
  }

  ruby::plugin { 'rbenv-vars':
    ensure => 'master',
    source  => 'sstephenson/rbenv-vars'
  }

  ruby::plugin { 'rbenv-whatis':
    ensure => 'master',
    source  => 'rkh/rbenv-whatis'
  }

  ruby::plugin { 'rbenv-use':
    ensure => 'master',
    source  => 'rkh/rbenv-use'
  }

  ruby::plugin { 'rbenv-update':
    ensure => 'master',
    source  => 'rkh/rbenv-update'
  }

  ruby::plugin { 'rbenv-gemset':
    ensure => 'master',
    source  => 'jamis/rbenv-gemset'
  }

  ruby::plugin { 'rbenv-each':
    ensure => 'master',
    source  => 'chriseppstein/rbenv-each'
  }

  ruby::plugin { 'rbenv-sudo':
    ensure => 'master',
    source  => 'dcarley/rbenv-sudo'
  }

  ruby::plugin { 'rbenv-rehash':
    ensure => 'master',
    source  => 'ryansouza/rbenv-rehash'
  }

}
