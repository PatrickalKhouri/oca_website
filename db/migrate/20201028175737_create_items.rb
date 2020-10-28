class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :apartment, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.references :furniture, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
