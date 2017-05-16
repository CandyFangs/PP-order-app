class AddColumnToElements < ActiveRecord::Migration[5.1]
  def change
  	add_column :elements, :name, :string
  end
end
