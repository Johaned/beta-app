source 'http://rubygems.org'

gem 'rails', '3.2.14.rc2'

gem 'mongoid', '2.4.5'
gem 'bson', '~> 1.4.0'
gem 'bson_ext', '~> 1.4.0'
gem 'mongoid_slug'
gem 'state_machine'
gem 'sass'
gem 'haml'
gem 'haml-rails'
gem 'mongoid-paperclip', :require => 'mongoid_paperclip' #paperclip 3.1.4
#gem "aws-s3",            :require => "aws/s3"
#gem 'aws-sdk'
gem 'devise'
#gem 'yubikey'
gem 'devise_invitable', :git => 'https://github.com/scambra/devise_invitable.git'
gem 'will_paginate', '3.0.0'
gem 'cancan'
gem 'jquery-rails', "~> 2.1.3"
#gem 'remotipart'
gem 'tinymce-rails'
gem 'google_visualr', '>= 2.1'
#gem 'rake', '0.9.2.2'
#gem 'rubyzip'
gem 'compass'
#gem 'exception_notification', :require => 'exception_notifier'
# gem 'clamav', '0.4.1'
gem 'therubyracer', '0.12.0'
#gem 'brakeman'
#gem 'rvm-capistrano'
gem 'pdfkit'
#gem 'gzip'
gem 'resque', :require => 'resque/server'
gem 'resque-logger'
gem 'nested_form', '~> 0.3.1'
gem 'wicked'
#gem 'RedCloth'
#gem 'pdf-reader'
#gem 'validates_timeliness', '~> 3.0.14'

gem 'backup'
#gem 'fog', '~> 1.4.0'
#gem 'parallel', '~> 0.5.12'

gem 'draper', '~> 1.3'

#gem 'chronic'

#gem 'whenever', :require => false

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  #gem 'uglifier'

  #gem 'compass', '~> 0.12.alpha'
  gem 'compass-rails'
  gem 'jquery-fileupload-rails', :git => 'git://github.com/Johaned/jquery-fileupload-rails'
end

gem 'unicorn'

group :development do
  gem 'debugger'
  gem 'capistrano', '2.13.5'
  gem 'capistrano-ext'
  gem 'letter_opener'
  gem 'unicorn'
  gem 'guard-rspec'
  gem 'rvm-capistrano'
  gem 'jazz_hands'
end

group :test do
  gem 'jasmine'
  gem 'jasmine-headless-webkit'
  #gem 'poltergeist'
  gem 'headless'
  gem 'capybara-webkit'
  gem 'pickle'
  gem 'flog'
  gem 'ci_reporter'
  gem 'minitest-reporters', '>= 0.4.1' #JB for use in Rubymine IDE
  gem 'faker'
  gem 'simplecov'
  gem 'simplecov-rcov'
  gem 'rspec-rails','2.11.0'
  gem 'capybara', '1.1.2'
  gem 'cucumber-rails','1.3.0', :require => false
  gem 'database_cleaner','0.8.0'
  gem 'machinist_mongo',  :git => 'https://github.com/nmerouze/machinist_mongo.git', :require => 'machinist/mongoid', :branch => 'machinist2'
  gem 'selenium-webdriver', '>= 2.30.0'
  gem 'factory_girl', '~> 4.2.0'
  gem 'pry'
  gem 'pry-doc'
  gem 'pry-nav'
  gem 'awesome_print'
  #gem 'spork', '~> 1.0rc'
end


group :production, :new_production do
  gem 'uglifier'
end

#gem 'passenger', :group => [:production, :staging]

#gem 'unicorn', :group => [:development, :new_production, :vagrant]
#gem 'capistrano-nginx-unicorn', require: false, group: :development
