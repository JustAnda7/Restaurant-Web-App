class Product < ApplicationRecord
	belongs_to :category
	has_one_attached :image
	has_many :orderables
	has_many :cart, through: :orderables
end
