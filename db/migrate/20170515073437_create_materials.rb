class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :type
      t.string :color

      t.timestamps
    end
  end
end
