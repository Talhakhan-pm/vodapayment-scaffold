require "test_helper"

class IdentityVerificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @identity_verification = identity_verifications(:one)
  end

  test "should get index" do
    get identity_verifications_url
    assert_response :success
  end

  test "should get new" do
    get new_identity_verification_url
    assert_response :success
  end

  test "should create identity_verification" do
    assert_difference("IdentityVerification.count") do
      post identity_verifications_url, params: { identity_verification: { merchant_id: @identity_verification.merchant_id, ssn: @identity_verification.ssn } }
    end

    assert_redirected_to identity_verification_url(IdentityVerification.last)
  end

  test "should show identity_verification" do
    get identity_verification_url(@identity_verification)
    assert_response :success
  end

  test "should get edit" do
    get edit_identity_verification_url(@identity_verification)
    assert_response :success
  end

  test "should update identity_verification" do
    patch identity_verification_url(@identity_verification), params: { identity_verification: { merchant_id: @identity_verification.merchant_id, ssn: @identity_verification.ssn } }
    assert_redirected_to identity_verification_url(@identity_verification)
  end

  test "should destroy identity_verification" do
    assert_difference("IdentityVerification.count", -1) do
      delete identity_verification_url(@identity_verification)
    end

    assert_redirected_to identity_verifications_url
  end
end
