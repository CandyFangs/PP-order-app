class Material < ApplicationRecord
	validates :type, presence: true
	validates :color, presence: true
end
