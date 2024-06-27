require "test_helper"

class Api::V1::FarmersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_farmers_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_farmers_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_farmers_create_url
    assert_response :success
  end
end
