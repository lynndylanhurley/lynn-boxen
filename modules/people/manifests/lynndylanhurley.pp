class people::lynndylanhurley {

  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  notify{"@-->dotfiles_dir ${dotfiles_dir}":}

  repository { $dotfiles_dir:
    source => "lynndylanhurley/dotfiles"
  }

  exec { "install dotfiles":
    cwd       => $dotfiles_dir,
    command   => "./install.sh",
    provider  => shell,
    creates   => "${home}/.zshrc",
    require   => Repository[$dotfiles_dir]
  }

  #languages
  include clojure
  include vlc

  #mac apps
  include flux
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
  include github_for_mac

  # phantomjs
  include phantomjs
  phantomjs::version { '1.9.0': }
  #phantomjs::global { '1.9.0': }

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
  include pckeyboardhack::login_item

  # change the capslock key to escape
  pckeyboardhack::bind { 'keyboard bindings':
    mappings => { 'capslock' => 53 }
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
