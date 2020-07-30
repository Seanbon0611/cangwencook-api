class OrderSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :total, :payment_status, :shipped_status, :created_at, :products, :lineitems
  has_many :lineitems
  has_many :products, though: :lineitems

end
