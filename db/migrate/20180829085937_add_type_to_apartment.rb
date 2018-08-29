class AddTypeToApartment < ActiveRecord::Migration[5.2]
  def change
    add_column :apartments, :type, :string
  end
end
