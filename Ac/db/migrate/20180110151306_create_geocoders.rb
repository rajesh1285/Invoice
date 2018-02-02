class CreateGeocoders < ActiveRecord::Migration[5.1]
  def change
    create_table :geocoders do |t|
      t.text :address
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
