class AddApartmentIdToCommodities < ActiveRecord::Migration[5.2]
  def change
    add_reference :commodities, :apartment, foreign_key: true
  end
end
