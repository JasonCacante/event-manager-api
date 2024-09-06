source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.1"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

group :development, :test do
  # pry-rails is an alternative to the IRB shell for Ruby [
  gem 'pry-rails', '~> 0.3.4'
  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false
  # rspec-rails is a testing framework for Rails 
  gem 'rspec-rails', '~> 7.0', '>= 7.0.1'
  # FactoryBot is a library for setting up Ruby objects as test data
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.3'
  # faker is a library for generating fake data
  gem 'faker', '~> 3.4', '>= 3.4.2'
  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :test do
  # database_cleaner is a library for cleaning databases
  gem 'database_cleaner', '~> 2.0', '>= 2.0.2'
  # database_cleaner-active_record is a library for cleaning databases with ActiveRecord
  gem 'database_cleaner-active_record', '~> 2.2'
  # shoulda-matchers is a library for testing Rails
  gem 'shoulda-matchers', '~> 6.4'
end

# rails i18n is a library for internationalization in Rails
gem 'rails-i18n', '~> 7.0', '>= 7.0.9'
# paranoia is a library for soft deletion of records
gem 'paranoia', '~> 3.0'