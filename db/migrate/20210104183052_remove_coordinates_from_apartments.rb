class RemoveCoordinatesFromApartments < ActiveRecord::Migration[6.0]
  def change
    remove_column :apartments, :latitude
    remove_column :apartments, :longitude
  end
end
