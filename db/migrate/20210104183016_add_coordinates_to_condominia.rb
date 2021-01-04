class AddCoordinatesToCondominia < ActiveRecord::Migration[6.0]
  def change
    add_column :condominia, :latitude, :float
    add_column :condominia, :longitude, :float
  end
end
