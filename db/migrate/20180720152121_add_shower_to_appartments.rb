class AddShowerToAppartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :shower_room, :integer
  end
end
