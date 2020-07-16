class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.float :total
      t.boolean :payment_status
      t.boolean :shipped_status

      t.timestamps
    end
  end
end
