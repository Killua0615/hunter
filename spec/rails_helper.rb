# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

# FactoryBotの設定
require 'factory_bot_rails'

# テスト用の画像を含むfixtureの設定
RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  
  # FactoryBotを自動でインクルード
  config.include FactoryBot::Syntax::Methods

  # 他の設定
  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end
