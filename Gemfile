source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'heroku'


group :production do
  gem 'pg'
	gem 'thin'      # production web server
	gem 'rack-google_analytics', :require => 'rack/google_analytics'
	gem 'taps'   # supports heroku db push
end

group :development, :test do
  gem 'sqlite3-ruby', :require => 'sqlite3'
	gem 'rspec-rails'
end


#gem 'therubyracer'  # this is required for assets precompile  - not required on cedar stack

# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'devise' # Devise must be required before RailsAdmin

gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'

gem "jquery-rails"
gem "ckeditor"
gem 'simple_form'  # need in dev for generating forms
gem 'geocoder'


gem 'aws' # s3


# gem 'will_paginate'   - replaced by kaminari
# gem 'kaminari'
#gem 'seed-fu'    # seed data


# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
