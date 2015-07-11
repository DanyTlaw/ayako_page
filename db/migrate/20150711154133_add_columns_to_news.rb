class AddColumnsToNews < ActiveRecord::Migration
  def change
  	add_column :news, :title, :string
  	add_column :news, :content, :text
  end
end
