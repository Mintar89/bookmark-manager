# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra'
gem 'sinatra-contrib'
gem 'rspec'
gem 'capybara'
gem 'pg'

group :development, :test do
  gem "rubocop", "0.79.0"
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end