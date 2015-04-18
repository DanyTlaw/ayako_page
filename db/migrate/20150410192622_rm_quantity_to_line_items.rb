class RmQuantityToLineItems < ActiveRecord::Migration
  def change
  	    remove_column :line_items, :quantity, :integer
  end
end
