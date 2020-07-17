class ProductSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :inventory, :category
end
