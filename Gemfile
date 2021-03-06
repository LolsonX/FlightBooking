source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0", ">= 6.0.3.4"
# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"
# Use Puma as the app server
gem "puma", "~> 4.1"
# Use SCSS for stylesheets
gem "sass-rails", "~> 6.0"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem "webpacker", "~> 4.0"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5.2"
# Use AMS to serialize JSON models
gem "active_model_serializers", "~> 0.10.0"

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'
# Use Pagy as a Pagination helper
gem "pagy", "~> 3.10"
# Use StandardRB as a good practice guide
gem "standard", "~> 0.10.2"
# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "~> 1.5"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", "~> 11.1"
  gem "rspec-rails", "~> 4.0"
  gem "factory_bot_rails", "~> 6.1"
  gem "pry-rails"
  gem "pry-byebug"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "web-console", "~> 4.1"
  gem "listen", "~> 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring", "~> 2.1"
  gem "spring-watcher-listen", "~> 2.0"
  gem "annotate", "~> 3.1"
  gem "strong_versions", "~> 0.4.5"
end

group :test do
  gem "shoulda-matchers", "~> 4.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "strong_migrations", "~> 0.7.3"

gem "devise", "~> 4.7"
