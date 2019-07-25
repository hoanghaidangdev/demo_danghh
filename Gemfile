source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap', '~> 4.1.3'
gem 'cancancan'
gem 'carrierwave'
gem 'coffee-rails', '~> 4.2'
gem 'config'
gem 'devise'
gem 'font-awesome-rails'
gem 'jbuilder', '~> 2.5'
gem 'jquery-countdown-rails'
gem 'jquery-rails'
gem 'mini_magick'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.6', '>= 5.1.6.1'
gem 'rails_admin'
gem 'sass-rails', '~> 5.0'
gem 'sidekiq'
gem "mysql2"
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'whenever', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'pry'
  gem 'seed_dump'
  gem 'selenium-webdriver'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem "capistrano"
  gem "capistrano3-puma"
  gem "capistrano-rails", require: false
  gem 'capistrano-passenger'
  gem "capistrano-yarn"
  gem "capistrano-bundler", require: false
  gem "capistrano-rvm"
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
