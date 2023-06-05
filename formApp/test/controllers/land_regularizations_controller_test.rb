require "test_helper"

class LandRegularizationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get land_regularizations_new_url
    assert_response :success
  end

  test "should get create" do
    get land_regularizations_create_url
    assert_response :success
  end
end
