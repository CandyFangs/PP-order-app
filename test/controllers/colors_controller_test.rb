require 'test_helper'

class ColorsControllerTest < ActionDispatch::IntegrationTest

  test "should index response" do
    material = materials(:one)
    get material_colors_path(material)
    assert_response :success
  end

  test "should new response" do
  	material = materials(:three)
    get new_material_color_path(material)
    assert_response :success
  end

  test "should create new material" do
  	material = materials(:two)
    assert_difference('Color.count') do
    post material_colors_path(material, params: { color: { color: 'yellow' } })
    assert_redirected_to material_colors_path(material)
    end
  end

  test "should edit response" do
  	material = materials(:one)
    get material_colors_path(material)
    assert_response :success
  end

  test "should update color" do
    material = materials(:one)
    color = colors(:one)
    patch material_color_path(material, color, params: { color: { color: 'yellow' } })
    assert_redirected_to material_colors_path(material)
    color.reload
    assert_equal "yellow", color.color
  end

  test "should destroy color" do
    material = materials(:two)
    color = colors(:two)
    assert_difference('Color.count', -1) do
      delete material_color_path(material, color)
    end
    assert_redirected_to material_colors_path
  end

end