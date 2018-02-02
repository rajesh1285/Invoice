class AddOrdercountToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :order_count, :integer
  end
end
