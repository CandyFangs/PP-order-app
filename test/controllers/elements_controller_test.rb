require 'test_helper'

class ElementsControllerTest < ActionDispatch::IntegrationTest

  test "should index response" do
    product = products(:one)
    get product_elements_path(product)
    assert_response :success
  end

  test "should new response" do
  	product = products(:three)
    get new_product_element_path(product)
    assert_response :success
  end

  test "should create new element" do
    product = products(:two)
    assert_difference('Element.count') do
    post product_elements_path(product, params: { element: { name: 'wnętrze', material_id: "2" } })
    assert_redirected_to product_elements_path(product)
    end
  end

  test "should destroy element" do
    product = products(:one)
    element = elements(:one)
    assert_difference('Element.count', -1) do
      delete product_element_path(product, element)
    end
    assert_redirected_to product_elements_path
  end

end
