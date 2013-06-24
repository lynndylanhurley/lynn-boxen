class rbenvs::environment {
  # default ruby versions
  require ruby::1_9_3
  require ruby::2_0_0
  require ruby::2_0_0_p195


  # rbenv
  class { 'ruby::global':
    version => '2.0.0-p195'
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

  ruby::plugin { 'rbenv-vars':
    version => 'HEAD',
    source  => 'sstephenson/rbenv-vars'
  }

  ruby::plugin { 'rbenv-whatis':
    version => 'HEAD',
    source  => 'rkh/rbenv-whatis'
  }

  ruby::plugin { 'rbenv-use':
    version => 'HEAD',
    source  => 'rkh/rbenv-use'
  }

  ruby::plugin { 'rbenv-update':
    version => 'HEAD',
    source  => 'rkh/rbenv-update'
  }

  ruby::plugin { 'rbenv-gemset':
    version => 'HEAD',
    source  => 'jamis/rbenv-gemset'
  }

  ruby::plugin { 'rbenv-each':
    version => 'HEAD',
    source  => 'chriseppstein/rbenv-each'
  }

  ruby::plugin { 'rbenv-default-gems':
    version => 'HEAD',
    source  => 'sstephenson/rbenv-default-gems'
  }

  ruby::plugin { 'rbenv-sudo':
    version => 'master',
    source  => 'dcarley/rbenv-sudo'
  }

  ruby::plugin { 'rbenv-rehash':
    version => 'master',
    source  => 'ryansouza/rbenv-rehash'
  }

}
