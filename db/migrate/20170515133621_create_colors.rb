class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :material_id
      t.string :color
      t.string :picture

      t.timestamps
    end
  end
end
