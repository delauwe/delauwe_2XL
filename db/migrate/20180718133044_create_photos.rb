class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :url
      t.references :apartment, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
