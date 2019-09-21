# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.3'
# for macOS Sierra & ruby 2.4
gem 'json', git: 'https://github.com/flori/json.git', branch: 'v1.8'
# Use mysql as the database for Active Record
gem 'mysql2', '0.5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'sprockets', '~> 3.7.0'
gem 'sprockets-rails'

gem 'rubocop', require: false
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'acts-as-taggable-on', '~> 6.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.42'
gem "devise", ">= 4.7.1"
gem 'execjs'
gem 'kaminari'
gem 'kaminari-bootstrap', '~> 3.0.1'
gem 'momentjs-rails', '>= 2.9.0'
gem 'pry-rails'
gem 'ransack'
gem 'therubyracer'
gem 'twitter-bootswatch-rails'
gem 'twitter-bootswatch-rails-helpers'
gem 'validates_timeliness', '~> 4.0'

group :production, :staging do
  gem 'rails_12factor'
end
gem 'rb-readline'
