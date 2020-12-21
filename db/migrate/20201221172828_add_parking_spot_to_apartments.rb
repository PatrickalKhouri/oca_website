class AddParkingSpotToApartments < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :parking_spot, :integer, :default => 0
  end
end
