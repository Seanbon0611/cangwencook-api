class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :phone_number, :email, uniqueness: true
  validates :email, :phone_number, :first_name, :last_name, :city, :state, :zipcode, :address1, :password, presence: true
  validates :email, format: { with: /(^[a-zA-Z0-9._@-]*$)/,
  message: "format not accepted"} 

end