class ChangeColumnNameFromApartmentTranslations < ActiveRecord::Migration[5.2]
  def change
        rename_column :apartment_translations, :category, :nature

  end
end
