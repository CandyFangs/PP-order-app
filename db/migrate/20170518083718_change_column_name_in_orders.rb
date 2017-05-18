class ChangeColumnNameInOrders < ActiveRecord::Migration[5.1]
  def change
  	rename_column :orders, :product_id, :category_id
  end
end
