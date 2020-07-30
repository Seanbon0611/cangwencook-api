class ChangeOrderDefaults < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :payment_status, :string, :default => "pending"
    change_column :orders, :shipped_status, :string, :boolean => false
    change_column :orders, :total, :integer, :default => 0
  end
end
