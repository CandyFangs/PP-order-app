require 'test_helper'

class MaterialsControllerTest < ActionDispatch::IntegrationTest

  test "should index response" do
    get materials_path
    assert_response :success
  end

  # test "should show response" do
  #   get material_path(material)
  #   assert_response :success
  # end

  test "should edit response" do
    get materials_path
    assert_response :success
  end

  test "should new response" do
    get new_material_path
    assert_response :success
  end

  test "should create new material" do
    assert_difference('Material.count') do
    post materials_url, params: { material: { brand: 'minky' } }
    assert_redirected_to materials_path
    end
  end

  test "should update material" do
    material = materials(:one)
    patch material_url(material), params: { material: { brand: "polar" } }
    assert_redirected_to materials_path
    material.reload
    assert_equal "polar", material.brand
  end

  test "should destroy material" do
    material = materials(:two)
    assert_difference('Material.count', -1) do
      delete material_path(material)
    end
    assert_redirected_to materials_path
  end

end