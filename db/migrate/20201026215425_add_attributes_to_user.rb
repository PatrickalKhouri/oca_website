class AddAttributesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :admin, :boolean
    add_column :users, :gender, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :document_type, :string
    add_column :users, :document_number, :string
    add_column :users, :phone_number, :string
    add_column :users, :date_of_birth, :date
  end
end
