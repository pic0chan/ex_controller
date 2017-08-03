require 'test_helper'

class SwitchesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get switches_new_url
    assert_response :success
  end

end
