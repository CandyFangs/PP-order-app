class AddColumnToOrderItems < ActiveRecord::Migration[5.1]
  def change
  	add_column :order_items, :order_id, :integer
  end
end
