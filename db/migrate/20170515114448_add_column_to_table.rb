class AddColumnToTable < ActiveRecord::Migration[5.1]
  def change
    add_column :materials, :pic, :string
  end
end
