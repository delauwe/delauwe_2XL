class AddColumns2ToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :description, :text
    add_column :apartments, :bathroom, :integer
    add_column :apartments, :toilet, :integer
    add_column :apartments, :shower_room, :integer
    add_column :apartments, :terrace, :boolean, default: false
    add_column :apartments, :living_room, :boolean, default: true
    add_column :apartments, :dining_room, :boolean, default: false
    add_column :apartments, :kitchen, :boolean, default: true
    add_column :apartments, :washing_machine, :boolean, default: true
    add_column :apartments, :washing_room, :boolean, default: false
  end
end
