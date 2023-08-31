class AddCoordinatesToRollercoasters < ActiveRecord::Migration[7.0]
  def change
    add_column :rollercoasters, :latitude, :float
    add_column :rollercoasters, :longitude, :float
  end
end
