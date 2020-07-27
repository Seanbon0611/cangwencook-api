class AddAltImage3ToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :alt_image3, :string
  end
end
