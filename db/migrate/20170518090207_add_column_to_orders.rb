class AddColumnToOrders < ActiveRecord::Migration[5.1]
  def change
  	add_column :orders, :product_id, :integer
  end
end
