class ChangeDefaultValues < ActiveRecord::Migration[5.2]
  def change
    change_column :apartments, :terrace, :boolean, :default => false
    change_column :apartments, :living_room, :boolean, :default => false
    change_column :apartments, :dining_room, :boolean, :default => false
    change_column :apartments, :kitchen, :boolean, :default => true
    change_column :apartments, :washing_machine, :boolean, :default => true
    change_column :apartments, :washing_room, :boolean, :default => true
  end
end
