class RemovePictureFormColor < ActiveRecord::Migration[5.1]
  def change
  	remove_column :colors, :picture
  end
end