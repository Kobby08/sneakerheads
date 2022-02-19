require 'spec_helper'
require 'rspec/rails'
require_relative '../config/environment'
Dir[Rails.root.join('spec/support/**/*.rb')].sort.each { |file| require file }

ENV['RAILS_ENV'] ||= 'test'
if Rails.env.production?
  abort('The Rails environment is running in production mode!')
end

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end