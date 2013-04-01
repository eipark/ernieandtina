require 'test_helper'

class RsvpControllerTest < ActionController::TestCase
  test "should get enter_code" do
    get :enter_code
    assert_response :success
  end

end
