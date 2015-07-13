class Theme < ActiveRecord::Base
	has_many :pictures
	translates :title, :content
end
