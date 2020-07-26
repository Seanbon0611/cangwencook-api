class ChangeDefaultValueForLineitems < ActiveRecord::Migration[6.0]
  def change
    change_column_default :lineitems, :quantity, 1
  end
end
