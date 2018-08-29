class ChangeColumnNameFromApartmentTranslations < ActiveRecord::Migration[5.2]
  def change
        rename_column :apartment_translations, :type, :nature

  end
end
