class UsersController < ApplicationController
  before_action :logged_in_only, except: [:create]

  def create
    user = User.new(user_params)

    if user.save
      render json: {msg: "Successfully Created", id: user.id}, status: 200
    else
      render json: {msg: "Failed to Create", error: user.errors.messages}, status: 409
    end
  end

  def admin_data
    users = User.all
    products = Product.all
    orders = Order.all
    if admin? 
      render json: {users: UserSerializer.new(users), orders: OrderSerializer.new(orders), products: ProductSerializer.new(products)}, status: 200
    else
      render json: {error: "Unauthorized Access"}, status: 404
    end

  end

  def data
    render json: {profile: ProfileSerializer.new(current_user)}, status: 200
  end

  private

  def user_params
    params.permit(:email, :phone_number, :address1, :address2, :city, :state, :zipcode, :first_name, :last_name, :password, :password_confirmation, :is_admin)
  end
end
