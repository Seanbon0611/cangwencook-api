class LineitemsController < ApplicationController
  def create
    #new instance of line item is created when adding item to cart
    #check to see if item already exists in order? if it does increase quantity + 1?
    order = Order.find(params[:order_id])
    product = Product.find(params[:product_id])
    line_items = order.lineitems
    
    #find or create by order_id, product_id
    match = line_items.find do |item|
      lineitem_params.product_id == item.id
    end 
    if match
      match.update(quantity: match.quantity += 1)
      render json: {msg: "quantity updated", id: match.id, quantity: match.quantity}, status: 200
    else
      new_line_item = Lineitem.create(order_id: order, product_id: product)
      render json: {msg: "added item to order", id: new_line_item.id, product: product}
    end
  end

  #look into build
  private
  def lineitem_params
    params.permit(:product_id, :order_id, :quantity)
  end
end
