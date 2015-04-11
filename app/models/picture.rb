class Picture < ActiveRecord::Base
	belongs_to :theme
	mount_uploader :url, PictureUploader
	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item

	private


	# Methode das keine line items dieses produkt betreffen
	def ensure_not_referenced_by_any_line_item

		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end
