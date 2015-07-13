class Picture < ActiveRecord::Base
	belongs_to :theme
	mount_uploader :url, PictureUploader
	translates :name, :price, :description
	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item

	#Diese Methode wird gebraucht damit nur eine Version eines Bildes geladen werden
	def self.getPictures(pics)
		filterPicture = Array.new
		names = Array.new
		pics.each do |pic|
			unless names.include? pic.name
				filterPicture.push(pic)
			end
			names.push(pic.name)
		end
		return filterPicture
	end


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
