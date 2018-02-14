require 'test_helper'

class PagesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_controller_home_url
    assert_response :success
  end
