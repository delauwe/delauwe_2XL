class AddPriceToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :price, :integer
  end
end
