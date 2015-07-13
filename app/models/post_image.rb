class PostImage < ActiveRecord::Base
	belongs_to :post
	translates :name
	mount_uploader :image, PostImageUploader
end
