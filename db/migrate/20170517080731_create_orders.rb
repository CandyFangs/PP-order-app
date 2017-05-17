class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.string :user

      t.timestamps
    end
  end
end
