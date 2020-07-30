class ProductSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :price, :category, :image, :alt_image1, :alt_image2, :alt_image3
  has_many :inventories
end
