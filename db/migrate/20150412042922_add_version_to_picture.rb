class AddVersionToPicture < ActiveRecord::Migration
  def change
  	add_column :pictures, :version, :integer
  end
end
