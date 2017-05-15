class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :type
      t.string :model
      t.string :description
      t.integer :price
      t.string :pic

      t.timestamps
    end
  end
end
