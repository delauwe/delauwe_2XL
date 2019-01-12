class RemoveColumnsFromApartment < ActiveRecord::Migration[5.2]
  def change
    remove_column :apartments, :bathroom
    remove_column :apartments, :toilets
    remove_column :apartments, :terrace
    remove_column :apartments, :living_room
    remove_column :apartments, :dining_room
    remove_column :apartments, :kitchen
    remove_column :apartments, :washing_room
    remove_column :apartments, :washing_machine
    remove_column :apartments, :shower_room
  end
end
