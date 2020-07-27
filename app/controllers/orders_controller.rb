class OrdersController < ApplicationController

  def create
    #Create new order
    #When a product gets added to cart create/update lineitem quantity
    #Order gets created upon signup
    #when order gets completed create new order

    user = User.find(params[:user_id])
    new_order = Order.new(order_params)

    if new_order.save
      render json: { msg: "New order created", line_item: line_item }, status: 200
    else 
      render json: {error: "Could not complete order"}, status: 409
    end

  end

  private
  def order_params
    params.permit(:user_id, :total, :payment_status, :shipped_status)
  end
end
