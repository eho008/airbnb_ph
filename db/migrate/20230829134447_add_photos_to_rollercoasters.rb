class AddPhotosToRollercoasters < ActiveRecord::Migration[7.0]
  def change
    add_column :rollercoasters, :photos, :string
  end
end
