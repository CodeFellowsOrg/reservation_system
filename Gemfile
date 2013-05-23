source 'https://rubygems.org'

# Core gems
gem 'rails', '3.2.13'
gem 'thin'
gem 'jquery-rails'
gem 'dynamic_form', '1.1.4'

group :production do
  gem 'pg'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'zurb-foundation'
end

group :test, :development do
  gem 'rspec-rails', '~> 2.13'
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-doc'
  gem 'sqlite3'
end

group :test do
  gem 'capybara'
  gem 'factory_girl', '~> 2.6.0'
  gem 'launchy'
  gem 'simplecov', :require => false
end
