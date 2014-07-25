class people::lynndylanhurley {
  #mac apps
  include flux
  include vlc
  include firefox
  include firefox::nightly
  include dropbox
  include alfred
  include googledrive
  include onepassword
  include chrome
  include chrome::canary
  include transmission
  include skype
  include spotify

  #coding tools (personal)
  include zsh
  include macvim
  include tmux
  include seil

  include virtualbox
  include vagrant
  include iterm2::stable
  include heroku
  include wget
  include github_for_mac

  # mac defaults
  osx::recovery_message { 'If this Mac is found, please call 773-234-7737': }
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog

  # dock
  include osx::dock::2d
  include osx::dock::autohide
  include osx::dock::dim_hidden_apps

  # misc
  include osx::disable_app_quarantine
  include osx::no_network_dsstores

  # change the capslock key to escape
  include seil::login_item
  seil::bind { 'keyboard bindings':
    mappings => { 'capslock' => 53 }
  }

  # heroku
  heroku::plugin { 'accounts':
    source => 'ddollar/heroku-accounts'
  }

  heroku::plugin { 'remote':
    source => 'tpope/heroku-remote'
  }

  heroku::plugin { 'binstubs':
    source => 'tpope/heroku-binstubs'
  }

  heroku::plugin { 'wildcard':
    source => 'tpope/heroku-surrogate'
  }

  package {
    [
      'z',
      'the_silver_searcher',
      'taskwarrior',
      'vcsh',
      'myrepos',
      'fzf'
    ]:
  }
}
