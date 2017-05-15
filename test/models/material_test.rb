require 'test_helper'

class MaterialTest < ActiveSupport::TestCase

	test "is brand present" do
		material = Material.new
		material.valid?
		assert_includes material.errors.full_messages, "Brand can't be blank"
	end

	test "is color present" do
		material = Material.new
		material.valid?
		assert_includes material.errors.full_messages, "Color can't be blank"
	end

end
