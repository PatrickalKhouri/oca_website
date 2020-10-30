class AddNameToNeighbourhood < ActiveRecord::Migration[6.0]
  def change
    add_column :neighbourhoods, :name, :string
  end
end
