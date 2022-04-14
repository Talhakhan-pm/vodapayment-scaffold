require "application_system_test_case"

class IdentityVerificationsTest < ApplicationSystemTestCase
  setup do
    @identity_verification = identity_verifications(:one)
  end

  test "visiting the index" do
    visit identity_verifications_url
    assert_selector "h1", text: "Identity verifications"
  end

  test "should create identity verification" do
    visit identity_verifications_url
    click_on "New identity verification"

    fill_in "Merchant", with: @identity_verification.merchant_id
    fill_in "Ssn", with: @identity_verification.ssn
    click_on "Create Identity verification"

    assert_text "Identity verification was successfully created"
    click_on "Back"
  end

  test "should update Identity verification" do
    visit identity_verification_url(@identity_verification)
    click_on "Edit this identity verification", match: :first

    fill_in "Merchant", with: @identity_verification.merchant_id
    fill_in "Ssn", with: @identity_verification.ssn
    click_on "Update Identity verification"

    assert_text "Identity verification was successfully updated"
    click_on "Back"
  end

  test "should destroy Identity verification" do
    visit identity_verification_url(@identity_verification)
    click_on "Destroy this identity verification", match: :first

    assert_text "Identity verification was successfully destroyed"
  end
end
