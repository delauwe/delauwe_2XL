class RemovePhotoFromApartment < ActiveRecord::Migration[5.2]
  def change
    remove_column :apartments, :photo

  end
end
