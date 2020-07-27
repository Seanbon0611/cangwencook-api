class AddAltImage1ToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :alt_image1, :string
  end
end
