class AddAvailabilityToApartments < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :availability, :date
  end
end
