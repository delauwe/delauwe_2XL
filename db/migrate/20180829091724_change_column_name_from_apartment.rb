class ChangeColumnNameFromApartment < ActiveRecord::Migration[5.2]
  def change
    rename_column :apartments, :category, :nature
  end
end
