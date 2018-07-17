class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :location
      t.integer :size
      t.integer :number_of_rooms
      t.string :name
      t.text :commodities
      t.string :photo

      t.timestamps
    end
  end
end
