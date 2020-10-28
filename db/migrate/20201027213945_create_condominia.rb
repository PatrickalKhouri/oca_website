class CreateCondominia < ActiveRecord::Migration[6.0]
  def change
    create_table :condominia do |t|
      t.references :neighbourhood, null: false, foreign_key: true
      t.string :name
      t.string :address
      t.string :has
      t.string :hasnt

      t.timestamps
    end
  end
end
