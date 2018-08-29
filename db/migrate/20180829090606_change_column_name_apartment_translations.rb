class ChangeColumnNameApartmentTranslations < ActiveRecord::Migration[5.2]
  def change
        rename_column :apartment_translations, :category, :type
  end
end
