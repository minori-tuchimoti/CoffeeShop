test "should get index" do
  get coffeeshops_url
  assert_response :success
end

test "should get new" do
  get new_coffeeshop_url
  assert_response :success
end

test "should get show" do
  coffeeshop = coffeeshops(:one)  # fixtureなどで準備している場合
  get coffeeshop_url(coffeeshop)
  assert_response :success
end

test "should get edit" do
  coffeeshop = coffeeshops(:one)
  get edit_coffeeshop_url(coffeeshop)
  assert_response :success
end
