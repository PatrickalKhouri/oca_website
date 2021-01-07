class AddNeighbourhoodToApartments < ActiveRecord::Migration[6.0]
  def change
    add_column :apartments, :neighbourhood, :string
  end
end
