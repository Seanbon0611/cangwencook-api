class AddAltImage2ToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :alt_image2, :string
  end
end
