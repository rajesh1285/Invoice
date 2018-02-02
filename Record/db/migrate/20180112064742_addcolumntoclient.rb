class Addcolumntoclient < ActiveRecord::Migration[5.1]
  def change
  	#addcolumn :firstname :string
  	add_column :clients, :firstname, :string
  end
end
