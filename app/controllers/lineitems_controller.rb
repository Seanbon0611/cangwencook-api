class LineitemsController < ApplicationController
  def create
    order = Order.find(params[:order_id])
    product = Product.find(params[:product_id])
    line_items = order.lineitems

    match = line_items.find do |item|
      lineitem_params[:product_id] == item.id
    end
    if match
      match.quantity += 1
      match.quantity += lineitem_params[:quantity]
      match.save
    else
      new_lineitem = Lineitem.new(lineitem_params)
      if new_lineitem.save
        render json: {msg: "Success"}, status: 200
      else
        render json {error: "Error"}, status: 409
      end
    end

    
  end

  private
  def lineitem_params
    params.permit(:product_id, :order_id, :quantity)
  end
end
