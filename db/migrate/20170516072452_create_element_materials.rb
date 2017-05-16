class CreateElementMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :element_materials do |t|
      t.string :element_id
      t.string :material_id

      t.timestamps
    end
  end
end
