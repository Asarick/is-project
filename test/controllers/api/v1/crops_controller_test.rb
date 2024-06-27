require "test_helper"

class Api::V1::CropsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_crops_index_url
    assert_response :success
  end
end
