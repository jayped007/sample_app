source 'https://rubygems.org'

# needed in all environments
gem 'rails', '3.2.11'
gem 'bootstrap-sass', '>= 2.0.0'
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'
gem 'jquery-rails', '>= 2.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# needed in development environment only
group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.9.0'
  gem 'annotate', '~> 2.4.1.beta'
  gem 'factory_girl_rails', '1.4.0'
end

# Gems used only for assets and not required in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.4'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'uglifier', '>= 1.2.3'
end

# needed in test environment only
group :test do
  gem 'capybara', '1.1.2'
end

# needed in production but not development
group :production do
  gem 'pg', '0.12.2'
end
