require "test_helper"

class CoffeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headers = { "Accept" => "text/html" }
    @coffee = coffees(:one)
  end

  test "should get index" do
    get coffees_url, headers: @headers
    assert_response :success
  end

  test "should get new" do
    get new_coffee_url, headers: @headers
    assert_response :success
  end

  test "should get show" do
    get coffee_url(@coffee), headers: @headers
    assert_response :success
  end

  test "should get edit" do
    get edit_coffee_url(@coffee), headers: @headers
    assert_response :success
  end
end
