require "test_helper"

class BasicVerificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basic_verification = basic_verifications(:one)
  end

  test "should get index" do
    get basic_verifications_url
    assert_response :success
  end

  test "should get new" do
    get new_basic_verification_url
    assert_response :success
  end

  test "should create basic_verification" do
    assert_difference("BasicVerification.count") do
      post basic_verifications_url, params: { basic_verification: { address_1: @basic_verification.address_1, city: @basic_verification.city, merchant_id: @basic_verification.merchant_id, state: @basic_verification.state, zip: @basic_verification.zip } }
    end

    assert_redirected_to basic_verification_url(BasicVerification.last)
  end

  test "should show basic_verification" do
    get basic_verification_url(@basic_verification)
    assert_response :success
  end

  test "should get edit" do
    get edit_basic_verification_url(@basic_verification)
    assert_response :success
  end

  test "should update basic_verification" do
    patch basic_verification_url(@basic_verification), params: { basic_verification: { address_1: @basic_verification.address_1, city: @basic_verification.city, merchant_id: @basic_verification.merchant_id, state: @basic_verification.state, zip: @basic_verification.zip } }
    assert_redirected_to basic_verification_url(@basic_verification)
  end

  test "should destroy basic_verification" do
    assert_difference("BasicVerification.count", -1) do
      delete basic_verification_url(@basic_verification)
    end

    assert_redirected_to basic_verifications_url
  end
end
