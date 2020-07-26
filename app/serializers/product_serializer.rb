class ProductSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :price, :category, :image
  has_many :inventories
end
