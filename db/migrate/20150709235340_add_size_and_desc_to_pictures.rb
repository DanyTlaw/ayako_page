class AddSizeAndDescToPictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :description, :string
  	add_column :pictures, :size, :string
  end
end
