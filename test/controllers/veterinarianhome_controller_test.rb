require "test_helper"

class VeterinarianhomeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get veterinarianhome_top_url
    assert_response :success
  end
end
