class Material < ApplicationRecord
	validates :brand, presence: true
	validates :color, presence: true
end
