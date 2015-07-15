class Theme < ActiveRecord::Base
	has_many :pictures
	translates :name, :description
end
