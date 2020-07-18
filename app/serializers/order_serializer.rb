class OrderSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :total, :payment_status, :shipped_status, :created_at


  attributes :products do |object|
    object.products.each do |product|
      product
    end
  end

end
