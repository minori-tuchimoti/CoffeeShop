require "test_helper"

class CoffeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coffees_url
    assert_response :success
  end

  test "should get new" do
    get new_coffee_url
    assert_response :success
  end

  test "should get show" do
    coffee = coffees(:one)
    get coffee_url(coffee)
    assert_response :success
  end

  test "should get edit" do
    coffee = coffees(:one)
    get edit_coffee_url(coffee)
    assert_response :success
  end
end
