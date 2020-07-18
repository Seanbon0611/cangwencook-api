class ProfileSerializer < ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :address1, :address2, :city, :state, :zipcode
end
