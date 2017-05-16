class Color < ApplicationRecord
	validates :color, presence: true

	belongs_to :material
end
