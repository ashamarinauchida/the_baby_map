class CreateLocationAmenities < ActiveRecord::Migration[7.0]
  def change
    create_table :location_amenities do |t|
      t.references :location, null: false, foreign_key: true
      t.references :amenity, null: false, foreign_key: true
      t.boolean :payment

      t.timestamps
    end
  end
end
