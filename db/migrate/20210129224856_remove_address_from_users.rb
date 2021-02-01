class RemoveAddressFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :phone_number
    remove_column :users, :address1
    remove_column :users, :address2
    remove_column :users, :city
    remove_column :users, :state
    remove_column :users, :zipcode
  end
end
