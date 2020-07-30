class ChangeOrdersShippedDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :shipped_status, 'boolean USING CAST(shipped_status AS boolean)'
  end
end
