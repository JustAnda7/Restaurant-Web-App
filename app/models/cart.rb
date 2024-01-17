class Cart < ApplicationRecord
  has_many :orderables
	has_many :product, through: :orderables

  def total
    orderables.to_a.sum { |item| item.total }
  end
end
