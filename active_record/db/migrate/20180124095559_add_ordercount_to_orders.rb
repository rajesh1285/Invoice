class AddOrdercountToOrders < ActiveRecord::Migration[5.1]
  def down
    add_column :orders, :orders_count, :string
  end
end
