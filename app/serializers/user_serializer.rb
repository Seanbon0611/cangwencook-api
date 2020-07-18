class UserSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email, :phone_number

  attributes :full_name do |object|
    object.first_name + " " + object.last_name
  end

  attributes :member_since do |object|
    object.created_at
  end

  attributes :orders do |object|
    object.orders.each do |order|
      order
    end
  end
end
