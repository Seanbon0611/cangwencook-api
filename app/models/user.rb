class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :email, uniqueness: true
  validates :email, :first_name, :last_name, :password, presence: true
  validates :email, format: { with: /(^[a-zA-Z0-9._@-]*$)/,
  message: "format not accepted"} 

end