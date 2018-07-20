class AddColumnsToAppartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :bathroom, :integer
    add_column :apartments, :toilets, :integer
    add_column :apartments, :terrace, :boolean, default: false
    add_column :apartments, :living_room, :boolean, default: false
    add_column :apartments, :dining_room, :boolean, default: false
    add_column :apartments, :kitchen, :boolean, default: false
    add_column :apartments, :washing_machine, :boolean, default: false
    add_column :apartments, :washing_room, :boolean, default: false
  end
end
