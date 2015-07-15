class CreateTranslationForPictures < ActiveRecord::Migration
  def up
    Picture.create_translation_table!({
    	name: :string,
    	description: :text
    }, {
    	migrate_data: true
    })
  end
 
  def down
    Picture.drop_translation_table! migrate_data: true
  end
end
