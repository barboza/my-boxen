class people::barboza {
  # Pugins
  heroku::plugin { 'accounts':
    source => 'ddollar/heroku-accounts'
  }

  # Configurations
  class { 'nodejs::global': version => 'v0.10.0' }
  class { 'phantomjs::global': version => '1.9.0' }

  # Packages
  include people::barboza::packages::the_silver_searcher

  # Aplications
  include people::barboza::applications::dotfiles
  include people::barboza::applications::vim
}
