require 'rubygems'
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

# Loading more in this block will cause your tests to run faster. However,
# if you change any configuration or code from libraries loaded here, you'll
# need to restart spork for it take effect.

# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'simplecov'
require 'simplecov-rcov'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
  SimpleCov.start 'rails'

  # From https://github.com/plataformatec/devise/wiki/How-To:-Controllers-tests-with-Rails-3-(and-rspec)
  config.include Devise::TestHelpers, :type => :controller

  # See https://github.com/plataformatec/devise/wiki/How-To:-Test-with-Capybara
  config.include Warden::Test::Helpers, :type => :request
  Warden.test_mode!

  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"

  config.before(:suite) do
    # p "BEFORE SUITE"
    # p "Setting the databse cleaner to mongoid with truncation"
    DatabaseCleaner[:mongoid].strategy = :truncation
  end

  config.after(:suite) do
    # p "AFTER SUITE"
    # p "DatabaseCleaner.clean"
    DatabaseCleaner.clean
  end

  config.before(:each) do |x|
    if x.example.metadata[:demo_data].blank? # Only do this if not using demo data
      # p "BEFORE EACH: DatabaseCleaner.clean and make a Tenant and Medic Role"
      DatabaseCleaner.start # does nothing with Mongoid but is included in DatabaseCleaner for consistency
      DatabaseCleaner.clean # clean before rather than after in case run after a demo_data test
      #reset_email
      #
      ## basic seed data for integration tests
      #Tenant.make!(:name => 'superadmin')
      #Tenant.current = Tenant.make!(:hosts => ["127.0.0.1"])
      #Role.make!(:medic)
      #Role.make!(:main_contact)
      #Role.make!(:admin)
      #Role.make!(:cd)
      #Role.make!(:lead)
      #Role.make!(:ro)
      #Role.make!(:medical_director)
      #Role.make!(:appraiser)
      #Role.make!(:msf_admin)
      #Role.make!(:jp_admin)
      #Role.make!(:speciality_lead)
    end
  end

  config.before(:all, :demo_data => true) do
    # p "BEFORE ALL DEMO DATA: Drop test and then populate Demo Data"
    if Mongoid.master.name == "sard_test_full"
      p "Dropping all collection in #{Mongoid.master.name}"
      Mongoid.master.collections.reject {|c| c.name =~ /^system/}.each(&:drop)
      sh "bundle exec mongorestore -h localhost #{Rails.root}/spec/assets/test_database"
    else
      p "Refusing to drop the database unless it's sard_test_full"
    end
  end

  Capybara.default_host = "http://127.0.0.1"
  Capybara.javascript_driver = :webkit
  #Capybara.server_port = 3000
  # Capybara.app_host = "http://127.0.0.1"
  # Capybara.server_host = "http://127.0.0.1"
end
