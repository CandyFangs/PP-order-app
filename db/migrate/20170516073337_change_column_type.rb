class ChangeColumnType < ActiveRecord::Migration[5.1]
  def change
  	change_column :elements, :material_id, :integer
  	change_column :elements, :product_id, :integer
  end
end
