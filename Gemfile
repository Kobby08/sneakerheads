source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "rails", "~> 7.0.2", ">= 7.0.2.2"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'simple_form', '~> 5.1'
gem 'devise', github: 'heartcombo/devise', branch: 'main'
gem 'friendly_id', '~> 5.4', '>= 5.4.2'

group :development do
  gem "web-console"
  gem 'guard', '~> 2.18'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
  gem 'pry-rails', '~> 0.3.9'
  gem 'awesome_print', '~> 1.9', '>= 1.9.2'
  gem 'byebug', '~> 11.1', '>= 11.1.3'
end

group :test do
  gem 'shoulda-matchers', '~> 5.1'
  gem 'database_cleaner'
  gem 'faker', '~> 2.19'
  gem 'simplecov', '~> 0.21.2'
  gem 'simplecov-console', require: false
  gem 'rails-controller-testing'
end

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 5.1'
  gem 'factory_bot_rails', '~> 6.2'
end

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"