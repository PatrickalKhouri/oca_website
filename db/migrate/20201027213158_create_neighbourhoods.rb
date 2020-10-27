class CreateNeighbourhoods < ActiveRecord::Migration[6.0]
  def change
    create_table :neighbourhoods do |t|
      t.references :city
      t.string :description

      t.timestamps
    end
  end
end
