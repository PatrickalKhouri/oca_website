class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :number
      t.integer :price
      t.integer :m2
      t.integer :room
      t.integer :guest
      t.integer :bed
      t.integer :bathroom
      t.boolean :pet_friendly
      t.string :description
      t.string :the_space
      t.string :transportation
      t.string :has
      t.string :hasnt
      t.string :owner
      t.boolean :active
      t.string :oca_id
      t.references :condominium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
