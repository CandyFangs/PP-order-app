class Product < ApplicationRecord
	validates :type, presence: true
	validates :model, presence: true
	validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end