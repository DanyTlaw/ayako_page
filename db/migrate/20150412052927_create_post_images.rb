class CreatePostImages < ActiveRecord::Migration
  def change
    create_table :post_images do |t|
      t.string :name		
      t.string :image

      t.timestamps null: false
    end
  end
end
