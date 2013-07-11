class people::lynndylanhurley {

  #languages
  include clojure
  include vlc

  #mac apps
  include flux
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
  include postgresql
  include heroku
  include pow
  include imagemagick
  include ctags
  include wget
  include redis
  include mongodb
  #include osx
  #include phantomjs
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

  #keyboard hack
  include pckeyboardhack

  # add pckeyboardhack to login items:
  include pckeyboardhack::login_item

  # change the left control to F19:
  pckeyboardhack::bind { 'keyboard bindings':
    mappings => { 'caps_lock' => 53 }
  }

  include keyremap4macbook

  # launch and add login-item
  include keyremap4macbook::login_item


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
