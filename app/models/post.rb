class Post < ActiveRecord::Base
	has_many :post_images
	translates :title, :content
end
