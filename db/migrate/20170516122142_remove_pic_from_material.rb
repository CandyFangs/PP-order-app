class RemovePicFromMaterial < ActiveRecord::Migration[5.1]
  def change
  	remove_column :materials, :pic
  end
end
