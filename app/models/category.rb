class Category < ApplicationRecord
	has_many :products
	# acts_as_tree order: "name"
end
