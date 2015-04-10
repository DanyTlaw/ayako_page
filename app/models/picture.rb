class Picture < ActiveRecord::Base
	belongs_to :theme
	mount_uploader :url, PictureUploader
end
