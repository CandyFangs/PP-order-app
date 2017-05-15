class RemovePicFromMaterials < ActiveRecord::Migration[5.1]
  def change
    remove_column :materials, :pic, :string
  end
end
