module ThemesHelper

	def frontpicture(themeID)
		image = ""
		# suche das erste Bild von diesem theme
		firstPicture = Picture.where(theme_id: themeID).first
		if !firstPicture.blank?
			image = firstPicture.url
		end
		return image
	end

end
