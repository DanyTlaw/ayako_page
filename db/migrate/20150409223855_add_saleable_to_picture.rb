class AddSaleableToPicture < ActiveRecord::Migration
  def change
  	add_column :pictures, :for_sale, :boolean
  end
end
