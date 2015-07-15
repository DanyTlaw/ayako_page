class CreateTranslationForPostImages < ActiveRecord::Migration
  def up
    PostImage.create_translation_table!({
    	name: :string
    }, {
    	migrate_data: true
    })
  end
 
  def down
    PostImage.drop_translation_table! migrate_data: true
  end
end
