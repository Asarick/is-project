require "test_helper"

class Api::V1::PremiumTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_premium_types_index_url
    assert_response :success
  end
end
