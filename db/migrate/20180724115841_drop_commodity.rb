class DropCommodity < ActiveRecord::Migration[5.2]
  def change
    drop_table :commodities
  end
end
