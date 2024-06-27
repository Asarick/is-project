require "test_helper"

class Api::V1::InsurancePackagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_insurance_packages_index_url
    assert_response :success
  end
end
