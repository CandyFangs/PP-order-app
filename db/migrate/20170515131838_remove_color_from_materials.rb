class RemoveColorFromMaterials < ActiveRecord::Migration[5.1]
  def change
    remove_column :materials, :color, :string
  end
end
