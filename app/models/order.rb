class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	PAYMENT_TYPES = ["Rechnung", "Pay Pal"]

	validates :name, :adress, :email, presence: true
	validates :pay_type, inclusion: PAYMENT_TYPES

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
			#Das Bild muss nun auf ordered gesetzt werden wenn es sich um genau ein stück handelt
			puts item.picture_id
				pic = Picture.find(item.picture_id)
				if pic.count < 2
					pic.status = "ordered"
					pic.save
				end
		end
	end
end
