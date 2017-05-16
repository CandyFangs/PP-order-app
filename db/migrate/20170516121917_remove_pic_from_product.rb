class RemovePicFromProduct < ActiveRecord::Migration[5.1]
  def change
  	remove_column :products, :pic
  end
end
