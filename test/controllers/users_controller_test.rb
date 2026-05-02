require "test_helper"

class UsersControllerSignupTest < ActionDispatch::IntegrationTest

  test "should get new (signup)" do
    get signup_path
    assert_response :success
  end
end
