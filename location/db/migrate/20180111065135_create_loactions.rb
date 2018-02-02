class CreateLoactions < ActiveRecord::Migration[5.1]
  def change
    create_table :loactions do |t|
      t.text :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
