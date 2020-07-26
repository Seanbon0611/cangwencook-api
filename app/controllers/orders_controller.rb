class OrdersController < ApplicationController

  def create
    new_order = Order.new(order_params)
    product = Product.find(order_params[:product_id]
    user = User.find(params[:user_id])
    order = Order.find(order_item_params[:order_id])

    byebug
    if new_order
      render json: { msg: "New Order Created"}, status: 200
    else 
      render json: {error: "Could not complete Transaction"}, status: 409
    end

  end

  private
  def order_params
    params.permit(:user_id, :product_id, :total, :payment_status, :shipped_status, :quantity)
  end
end
