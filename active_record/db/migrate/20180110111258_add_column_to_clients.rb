class AddColumnToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :name, :string
    add_column :clients, :description, :string
  end
end
