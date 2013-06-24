class people::lynndylanhurley {

  #languages
  include clojure
  include vlc

  #mac apps
  include flux
  #include osx
  #include evernote
  include firefox::nightly
  include dropbox
  include alfred
  include googledrive
  include onepassword
  include chrome
  include chrome::canary
  include transmission
  include skype
  include propane

  #coding tools (personal)
  include zsh
  include macvim

  #dev env
  include virtualbox
  include vagrant
  include iterm2::stable
  include postgresapp
  include heroku
  include pow
  include imagemagick
  include ctags
  include wget
  include redis
  include mongodb
  include phantomjs

  # mac defaults
  #osx::recovery_message { 'If this Mac is found, please call 773-234-7737': }
  #osx::global::expand_print_dialog
  #osx::global::expand_save_dialog

  # dock
  #osx::dock::2d
  #osx::dock::autohide
  #osx::dock::dim_hidden_apps

  # misc
  #osx::disable_app_quarantine
  #osx::no_network_dsstores


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
      'the_silver_searcher'
    ]:
  }
}
