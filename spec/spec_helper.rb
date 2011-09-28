require "rspec"
require "rack/test"
require "json"

require_relative "./../server"

RSpec.configure do |config|
  config.mock_with :rspec
  config.include Rack::Test::Methods
end

def app
  Sinatra::Application
end