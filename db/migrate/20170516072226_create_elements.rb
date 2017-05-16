class CreateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :elements do |t|
      t.string :material_id
      t.string :product_id

      t.timestamps
    end
  end
end
