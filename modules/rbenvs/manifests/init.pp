class rbenvs {
  # rbenv
  class { 'ruby::global':
    version => '2.0.0-p247'
  }

  ruby_gem { 'pry for all rubies':
    gem          => 'pry',
    ruby_version => '*'
  }

  ruby_gem { 'hub for all rubies':
    gem          => 'hub',
    ruby_version => '*'
  }

  ruby_gem { 'interactive_editor for all rubies':
    gem          => 'interactive_editor',
    ruby_version => '*'
  }

  ruby_gem { 'wirble for all rubies':
    gem          => 'wirble',
    ruby_version => '*'
  }

  ruby_gem { 'tunnels for all rubies':
    gem          => 'tunnels',
    ruby_version => '*'
  }

  ruby_gem { 'powder for all rubies':
    gem          => 'powder',
    ruby_version => '*'
  }

  ruby_gem { 'lunchy for all rubies':
    gem          => 'lunchy',
    ruby_version => '*'
  }

  ruby_gem { 'redcarpet for all rubies':
    gem          => 'redcarpet',
    ruby_version => '*'
  }

  ruby_gem { 'CoffeeTags for all rubies':
    gem          => 'CoffeeTags',
    ruby_version => '*'
  }

  ruby_gem { 'zeus for all rubies':
    gem          => 'zeus',
    ruby_version => '*'
  }

  ruby_gem { 'pygments.rb for all rubies':
    gem          => 'pygments.rb',
    ruby_version => '*'
  }

  ruby_gem { 'jekyll for all rubies':
    gem          => 'jekyll',
    ruby_version => '*'
  }

  ruby_gem { 'tmuxinator for all rubies':
    gem          => 'tmuxinator',
    ruby_version => '*'
  }

  #ruby::plugin { 'rbenv-vars':
    #ensure => 'master',
    #source => 'sstephenson/rbenv-vars'
  #}

  #ruby::plugin { 'rbenv-whatis':
    #ensure => 'master',
    #source => 'rkh/rbenv-whatis'
  #}

  #ruby::plugin { 'rbenv-use':
    #ensure => 'master',
    #source => 'rkh/rbenv-use'
  #}

  #ruby::plugin { 'rbenv-update':
    #ensure => 'master',
    #source => 'rkh/rbenv-update'
  #}

  #ruby::plugin { 'rbenv-gemset':
    #ensure => 'master',
    #source => 'jamis/rbenv-gemset'
  #}

  #ruby::plugin { 'rbenv-each':
    #ensure => 'master',
    #source => 'chriseppstein/rbenv-each'
  #}

  #ruby::plugin { 'rbenv-sudo':
    #ensure => 'master',
    #source => 'dcarley/rbenv-sudo'
  #}

  #ruby::plugin { 'rbenv-rehash':
    #ensure => 'master',
    #source => 'ryansouza/rbenv-rehash'
  #}

}
