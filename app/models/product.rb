class Product < ApplicationRecord
  has_many :lineitems
  has_many :orders, through: :lineitems
  has_many :inventories
end