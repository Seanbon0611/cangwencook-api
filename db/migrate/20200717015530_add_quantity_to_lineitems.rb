class AddQuantityToLineitems < ActiveRecord::Migration[6.0]
  def change
    add_column :lineitems, :quantity, :integer
  end
end
