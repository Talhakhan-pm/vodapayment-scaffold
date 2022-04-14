require "application_system_test_case"

class BusinessVerificationsTest < ApplicationSystemTestCase
  setup do
    @business_verification = business_verifications(:one)
  end

  test "visiting the index" do
    visit business_verifications_url
    assert_selector "h1", text: "Business verifications"
  end

  test "should create business verification" do
    visit business_verifications_url
    click_on "New business verification"

    fill_in "Business name", with: @business_verification.business_name
    fill_in "Ein", with: @business_verification.ein
    fill_in "Merchant", with: @business_verification.merchant_id
    click_on "Create Business verification"

    assert_text "Business verification was successfully created"
    click_on "Back"
  end

  test "should update Business verification" do
    visit business_verification_url(@business_verification)
    click_on "Edit this business verification", match: :first

    fill_in "Business name", with: @business_verification.business_name
    fill_in "Ein", with: @business_verification.ein
    fill_in "Merchant", with: @business_verification.merchant_id
    click_on "Update Business verification"

    assert_text "Business verification was successfully updated"
    click_on "Back"
  end

  test "should destroy Business verification" do
    visit business_verification_url(@business_verification)
    click_on "Destroy this business verification", match: :first

    assert_text "Business verification was successfully destroyed"
  end
end
