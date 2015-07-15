class CreateTranslationForThemes < ActiveRecord::Migration
  def up
    Theme.create_translation_table!({
    	name: :string
    }, {
    	migrate_data: true
    })
  end
 
  def down
    Theme.drop_translation_table! migrate_data: true
  end
end
