require "application_system_test_case"

class BasicVerificationsTest < ApplicationSystemTestCase
  setup do
    @basic_verification = basic_verifications(:one)
  end

  test "visiting the index" do
    visit basic_verifications_url
    assert_selector "h1", text: "Basic verifications"
  end

  test "should create basic verification" do
    visit basic_verifications_url
    click_on "New basic verification"

    fill_in "Address 1", with: @basic_verification.address_1
    fill_in "City", with: @basic_verification.city
    fill_in "Merchant", with: @basic_verification.merchant_id
    fill_in "State", with: @basic_verification.state
    fill_in "Zip", with: @basic_verification.zip
    click_on "Create Basic verification"

    assert_text "Basic verification was successfully created"
    click_on "Back"
  end

  test "should update Basic verification" do
    visit basic_verification_url(@basic_verification)
    click_on "Edit this basic verification", match: :first

    fill_in "Address 1", with: @basic_verification.address_1
    fill_in "City", with: @basic_verification.city
    fill_in "Merchant", with: @basic_verification.merchant_id
    fill_in "State", with: @basic_verification.state
    fill_in "Zip", with: @basic_verification.zip
    click_on "Update Basic verification"

    assert_text "Basic verification was successfully updated"
    click_on "Back"
  end

  test "should destroy Basic verification" do
    visit basic_verification_url(@basic_verification)
    click_on "Destroy this basic verification", match: :first

    assert_text "Basic verification was successfully destroyed"
  end
end
