class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.integer :product_id
      t.integer :size_xs
      t.integer :size_s
      t.integer :size_m
      t.integer :size_l
      t.integer :size_xl
      t.integer :size_xxl

      t.timestamps
    end
  end
end
