class ChangeColumnTypeInElementMaterial < ActiveRecord::Migration[5.1]
  def change
  	change_column :element_materials, :material_id, :integer
  	change_column :element_materials, :element_id, :integer
  end
end
