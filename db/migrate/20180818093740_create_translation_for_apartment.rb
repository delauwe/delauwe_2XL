class CreateTranslationForApartment < ActiveRecord::Migration[5.2]
  def up
    Apartment.create_translation_table!(
      {
        location: :string,
        category: :string,
        description: :text
      },
      {
        migrate_data: true
      }
    )
  end

  def down
    Apartment.drop_translation_table! migrate_data: true
  end
end

