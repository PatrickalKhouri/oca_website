class RemoveAttributesFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :last_name, :string
    remove_column :users, :admin, :boolean
    remove_column :users, :gender, :string
    remove_column :users, :address, :string
    remove_column :users, :city, :string
    remove_column :users, :country, :string
    remove_column :users, :document_type, :string
    remove_column :users, :document_number, :string
    remove_column :users, :phone_number, :string
    remove_column :users, :date_of_birth, :date
  end
end
