require "test_helper"

class FundingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funding = fundings(:one)
  end

  test "should get index" do
    get fundings_url
    assert_response :success
  end

  test "should get new" do
    get new_funding_url
    assert_response :success
  end

  test "should create funding" do
    assert_difference("Funding.count") do
      post fundings_url, params: { funding: { checking_num: @funding.checking_num, routing_num: @funding.routing_num, title: @funding.title } }
    end

    assert_redirected_to funding_url(Funding.last)
  end

  test "should show funding" do
    get funding_url(@funding)
    assert_response :success
  end

  test "should get edit" do
    get edit_funding_url(@funding)
    assert_response :success
  end

  test "should update funding" do
    patch funding_url(@funding), params: { funding: { checking_num: @funding.checking_num, routing_num: @funding.routing_num, title: @funding.title } }
    assert_redirected_to funding_url(@funding)
  end

  test "should destroy funding" do
    assert_difference("Funding.count", -1) do
      delete funding_url(@funding)
    end

    assert_redirected_to fundings_url
  end
end
