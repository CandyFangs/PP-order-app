class Material < ApplicationRecord
	validates :brand, presence: true

	has_many :colors
end
