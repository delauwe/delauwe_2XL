class ChangeDefaultValuesCommodities < ActiveRecord::Migration[5.2]
  def change
    change_column :commodities, :washing_machine, :boolean, :default => true
    change_column :commodities, :kitchen, :boolean, :default => true
    change_column :commodities, :living_room, :boolean, :default => true
  end
end
