ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end

def create_readers(amount = 1)
  amount.times do |n|
    Reader.create(
      title: "TEST TITLE #{n}",
      url: "TEST URL #{n}",
      counter: (n * amount)
    )
  end
end
