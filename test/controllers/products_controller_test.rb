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
    get new_product_path
    assert_response :success
  end

  test "should create new product" do
    assert_difference('Product.count') do
    post products_url, params: { product: { kind: 'uszka', model: 'cute kitten', price: 30 } }
    assert_redirected_to products_path
    end
  end

  test "should update product" do
    product = products(:one)
    patch product_url(product), params: { product: { model: "updated" } }
    assert_redirected_to products_path
    product.reload
    assert_equal "updated", product.model
  end

  test "should destroy product" do
    product = products(:two)
    assert_difference('Product.count', -1) do
      delete product_path(product)
    end
    assert_redirected_to products_path
  end

end
