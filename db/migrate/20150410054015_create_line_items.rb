class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :picture, index: true
      t.belongs_to :cart, index: true

      t.timestamps null: false
    end
    add_foreign_key :line_items, :pictures
    add_foreign_key :line_items, :carts
  end
end
