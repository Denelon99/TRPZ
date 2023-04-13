require "test_helper"

class CommoditiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commodity = commodities(:one)
  end

  test "should get index" do
    get commodities_url, as: :json
    assert_response :success
  end

  test "should create commodity" do
    assert_difference("Commodity.count") do
      post commodities_url, params: { commodity: { name: @commodity.name, price: @commodity.price, quantity: @commodity.quantity, storage_id: @commodity.storage_id } }, as: :json
    end

    assert_response :created
  end

  test "should show commodity" do
    get commodity_url(@commodity), as: :json
    assert_response :success
  end

  test "should update commodity" do
    patch commodity_url(@commodity), params: { commodity: { name: @commodity.name, price: @commodity.price, quantity: @commodity.quantity, storage_id: @commodity.storage_id } }, as: :json
    assert_response :success
  end

  test "should destroy commodity" do
    assert_difference("Commodity.count", -1) do
      delete commodity_url(@commodity), as: :json
    end

    assert_response :no_content
  end
end
