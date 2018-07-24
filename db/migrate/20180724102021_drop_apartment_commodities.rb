class DropApartmentCommodities < ActiveRecord::Migration[5.2]
  def change
        drop_table :apartment_commodities
  end
end
