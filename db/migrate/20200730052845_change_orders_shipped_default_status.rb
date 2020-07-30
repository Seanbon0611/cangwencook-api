class ChangeOrdersShippedDefaultStatus < ActiveRecord::Migration[6.0]
  def change
    change_column_default :orders, :shipped_status, false
  end
end
