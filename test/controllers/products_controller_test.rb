require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest

  test "should index response" do
    get products_path
    assert_response :success
  end

  test "should edit response" do
    get products_path
    assert_response :success
  end

  test "should new response" do
    get products_new_path
    assert_response :success
  end
  # test "should create new product" do
  #   post products_path, params: { product: {id: 1} }
  #   assert_response :success
  # end
  # test "should destroy product" do
  #   product = products(:two)
  #   product = products(:four)
  #   assert_difference('Product.count', -1) do
  #     product = products(:one)
  #     delete product_path(product.id)
  #   end
  #    assert_redirected_to products_path
  # end
end

 # patch article_url(@article), params: { article: { title: "updated" } }