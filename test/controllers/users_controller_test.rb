require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get users_team_url
    assert_response :success
  end

  test "should get profile" do
    get users_profile_url
    assert_response :success
  end

end
