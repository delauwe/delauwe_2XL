class AddSlugToApartments < ActiveRecord::Migration[7.0]
  def change
    add_column :apartments, :slug, :string
    add_index :apartments, :slug, unique: true
  end
end
