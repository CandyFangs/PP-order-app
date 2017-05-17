class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :element_id
      t.integer :product_id
      t.integer :element_id

      t.timestamps
    end
  end
end
