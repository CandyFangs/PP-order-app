require 'test_helper'

class ColorTest < ActiveSupport::TestCase

	test "is color present" do
		color = Color.new
		color.valid?
		assert_includes color.errors.full_messages, "Color can't be blank"
	end

end
