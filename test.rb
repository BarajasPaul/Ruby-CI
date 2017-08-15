require './app.rb'
require 'minitest/autorun'
require 'rack/test'

class MyAppTest < Minitest::Test
  include Rack::Test::Methods

  def app 
    HelloWorld
  end

  def test_my_default
    get '/'
    assert_equal "Hello, world!", last_response.body
  end

  def test_with_parameters
    get '/Paul'
    assert_equal "Hello, Paul!", last_response.body
  end
end
