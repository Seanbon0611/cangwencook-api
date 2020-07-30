class LineitemsController < ApplicationController
  def create
    #new instance of line item is created when adding item to cart
    #check to see if item already exists in order? if it does increase quantity + 1?
    order = Order.find(params[:order_id])
    product = Product.find(params[:product_id])
    line_items = order.lineitems
    #find or create by order_id, product_id
    match = line_items.find do |item|
      lineitem_params[:product_id] == item.product_id
    end 
    if match
      match.update(quantity: match.quantity += 1)
      render json: {msg: "quantity updated", id: match.id, quantity: match.quantity}, status: 200
    else
      new_line_item = Lineitem.new(lineitem_params)
      if new_line_item.save
        render json: {msg: "added item to order", id: new_line_item.id, product: product}, status: 200
      else
        render json: {error: "there was an error"}, status: 409
      end
    end
  end

  def reduce_quantity
    line_item = Lineitem.find(params[:id])
    if (line_item.quantity > 1)
      line_item.update(quantity: line_item.quantity -= 1)
      render json: {msg: "item updated", id: line_item.id, quantity: line_item.quantity}, status: 200
    elsif (line_item.quantity == 1)
      line_item.destroy 
      render json: {msg: "item removed"}, status: 200
    end
  end


  private
  def lineitem_params
    params.permit(:product_id, :order_id, :quantity)
  end
end
