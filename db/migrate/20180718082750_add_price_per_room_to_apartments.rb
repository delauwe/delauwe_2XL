class AddPricePerRoomToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :price_per_room, :integer
  end
end
