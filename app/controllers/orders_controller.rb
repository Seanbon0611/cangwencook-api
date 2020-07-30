class OrdersController < ApplicationController

  def create
    #Create new order
    #When a product gets added to cart create/update lineitem quantity
    #Order gets created upon signup
    #when order gets completed create new order
    user = User.find(params[:user_id])
    new_order = Order.new(order_params)
    
    if new_order.save
      render json: { msg: "New order created", order: new_order }, status: 200
    else 
      render json: {error: "Could not complete order"}, status: 409
    end

  end
  def complete_order 
    user = User.find(params[:user_id])
    user_orders = user.orders
    order = user_orders.find_by(payment_status: "pending")

    order.update(payment_status: params[:payment_status])
    
    if order.payment_status == "Paid"
      new_order = Order.new(user_id: user.id)
      if new_order.save
        render json: { msg: "Transaction complete", newOrder: new_order }, status: 200
      else 
        render json: {error: "Could not complete order"}, status: 500
      end
    else 

    end

    #go through all the orders and check to see if payment_status is false
    #add attribute to orders that states has active order
  end

  private
  def order_params
    params.permit(:user_id, :total, :payment_status, :shipped_status)
  end
end
