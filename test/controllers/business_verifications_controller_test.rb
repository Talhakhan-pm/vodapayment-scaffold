require "test_helper"

class BusinessVerificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_verification = business_verifications(:one)
  end

  test "should get index" do
    get business_verifications_url
    assert_response :success
  end

  test "should get new" do
    get new_business_verification_url
    assert_response :success
  end

  test "should create business_verification" do
    assert_difference("BusinessVerification.count") do
      post business_verifications_url, params: { business_verification: { business_name: @business_verification.business_name, ein: @business_verification.ein, merchant_id: @business_verification.merchant_id } }
    end

    assert_redirected_to business_verification_url(BusinessVerification.last)
  end

  test "should show business_verification" do
    get business_verification_url(@business_verification)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_verification_url(@business_verification)
    assert_response :success
  end

  test "should update business_verification" do
    patch business_verification_url(@business_verification), params: { business_verification: { business_name: @business_verification.business_name, ein: @business_verification.ein, merchant_id: @business_verification.merchant_id } }
    assert_redirected_to business_verification_url(@business_verification)
  end

  test "should destroy business_verification" do
    assert_difference("BusinessVerification.count", -1) do
      delete business_verification_url(@business_verification)
    end

    assert_redirected_to business_verifications_url
  end
end
