class ChangeCommoditiesFromApartment < ActiveRecord::Migration[5.2]
  def change
      remove_column :apartments, :commodities
  end
end
