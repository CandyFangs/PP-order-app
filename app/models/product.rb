class Product < ApplicationRecord
	validates :kind, presence: true
	validates :model, presence: true
	validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

	has_many :elements
	has_many :materials, through: :elements

	has_attached_file :picture, styles: { medium: "320x180>", thumb: "100x100>" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
