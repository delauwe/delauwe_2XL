class DropTranslationTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :apartment_translations
  end
end
