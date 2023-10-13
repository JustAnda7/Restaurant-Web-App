class Order < ApplicationRecord
	has_many :order_items
	before_save :set_subtotal

	def subtotal
		order_items.collect {|item| item.valid? ? item.unit_price * item.quantity : 0}
	end

	private
	def set_subtotal
		self[:subtotal] = subtotal
	end
end
