require "test_helper"

class EndsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get ends_home_url
    assert_response :success
  end
end
