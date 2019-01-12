class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.references :apartment, foreign_key: true
      t.integer :size
      t.string :name
      t.text :commodities
      t.text :description
      t.date :availability

      t.timestamps
    end
  end
end
