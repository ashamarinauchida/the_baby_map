class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :local_name
      t.string :type
      t.string :country
      t.string :city
      t.string :street_address
      t.string :transport_stop
      t.text :description
      t.string :phone_number

      t.timestamps
    end
  end
end
