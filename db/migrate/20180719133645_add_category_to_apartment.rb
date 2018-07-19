class AddCategoryToApartment < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :category, :string
  end
end
