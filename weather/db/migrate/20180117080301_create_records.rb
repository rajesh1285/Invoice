class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.references :location, foreign_key: true
      t.integer :temp
      t.string :status

      t.timestamps
    end
  end
end
