require 'test_helper'

class ElementTest < ActiveSupport::TestCase

	test "is name present" do
		element = Element.new
		element.valid?
		assert_includes element.errors.full_messages, "Name can't be blank"
	end

	test "is material_id present" do
		element = Element.new
		element.valid?
		assert_includes element.errors.full_messages, "Material must exist"
	end

end
