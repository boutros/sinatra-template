#encoding: UTF-8
require "./test/test_helper"

describe App do
  include Rack::Test::Methods

  def app
    App
  end

  describe "index" do
    it "should have an index view" do
      get '/'
      last_response.status.must_equal 200
    end
    it "should have other stuff to" do
      #something
    end
  end
end
