# spec/spec_helper.rb
require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

# require File.expand_path '../../my-app.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  # def app() Sinatra::Application end
  def app() described_class end
end

# For RSpec 2.x and 3.x
RSpec.configure { |c| c.include RSpecMixin }

# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__
