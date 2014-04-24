require 'test_helper'

class JqueryControllerTest < ActionController::TestCase
  test "should get practice" do
    get :practice
    assert_response :success
  end

end
