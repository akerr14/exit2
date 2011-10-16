source 'http://rubygems.org'

gem 'rails', '3.0.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3'  - removed prior to deploy - don't think it is required


group :production do
  gem 'pg'
end
group :development, :test do
	gem 'sqlite3-ruby', :require => 'sqlite3'
end

gem 'devise' # Devise must be required before RailsAdmin

gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'

gem "jquery-rails"


gem 'geocoder'

gem 'taps'   # supports heroku db push

gem 'aws'


# gem 'will_paginate'   - replaced by kaminari
# gem 'kaminari'
#gem 'seed-fu'    # seed data



group :development do
	gem 'rspec-rails', '2.0.1'
	gem 'simple_form'  # need in dev for generating forms - may need in prod later
end

group :test do
	gem 'rspec', '2.0.1'
	gem 'webrat', '0.7.1'
end

group :production do
  gem 'rack-google_analytics', :require => "rack/google_analytics"
end



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
