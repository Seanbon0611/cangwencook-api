class UsersController < ApplicationController
  before_action :logged_in_only, except: [:create]

  def create
    user = User.new(user_params)
    
    if user.save
      order = Order.create(user_id: user.id, total:0.00, payment_status:false, shipped_status: false)
      render json: {msg: "Successfully Created", id: user.id, order: order}, status: 200
    else
      render json: {msg: "Failed to Create", error: user.errors.messages}, status: 409
    end
  end

  def complete_order 
    user = User.find(params[:id])
    

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
