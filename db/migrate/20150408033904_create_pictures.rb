class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.integer :price
      t.integer :count
      t.string :url
      t.integer :theme_id

      t.timestamps null: false
    end
  end
end
