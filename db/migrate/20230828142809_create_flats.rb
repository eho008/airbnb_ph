class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :location
      t.float :price_per_night
      t.text :description
      t.string :property_type

      t.timestamps
    end
  end
end
