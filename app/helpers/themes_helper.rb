module ThemesHelper

	def frontpicture(themeID)
		# suche das erste Bild von diesem theme
		firstPicture = Picture.where(theme_id: themeID).first
		image = firstPicture.url

		return image
	end

end
