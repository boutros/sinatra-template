#encoding: UTF-8
require "./test/test_helper"

class AppTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    App
  end

  def test_default
    assert App
  end
end
