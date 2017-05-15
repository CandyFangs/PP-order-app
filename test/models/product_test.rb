require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	test "is type present" do
		product = Product.new
		product.valid?
		assert_includes product.errors.full_messages, "Type can't be blank"
	end

	test "is model present" do
		product = Product.new
		product.valid?
		assert_includes product.errors.full_messages, "Model can't be blank"
	end

	test "is price present" do
		product = Product.new
		product.valid?
		assert_includes product.errors.full_messages, "Price can't be blank"
	end

	test "is price numeric" do
		product = Product.new
		product.valid?
		price = product.price
		if !(price.is_a?(Numeric))
		 	assert_includes product.errors.full_messages, "Price is not a number"
		end
	end

	# test "is price greater_than 0" do
	# 	product = Product.new
	# 	product.valid?
	# 	price = product.price
	# 	if (price > 0)
	# 		assert_includes product.errors.full_messages, "Price should be more than 0"
	# 	end
	# end

end
