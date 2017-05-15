class RenameTypeToBrand < ActiveRecord::Migration[5.1]
  def change
  	rename_column :materials, :type, :brand
  end
end
