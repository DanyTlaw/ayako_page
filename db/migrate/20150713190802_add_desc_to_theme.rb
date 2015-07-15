class AddDescToTheme < ActiveRecord::Migration
  def change
  	add_column :themes, :description, :text
  end
end
