class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :apartment, null: false, foreign_key: true
      t.integer :guests
      t.date :check_in
      t.date :check_out
      t.integer :price

      t.timestamps
    end
  end
end
