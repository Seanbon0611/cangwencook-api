class ProductsController < ApplicationController
  before_action :admin_only, only: [:create]

  def index 
    products = Product.all
    render json: {products: products}
  end

  def create
    new_product = Product.new(product_params)

    if new_product.save
      render json: {msg: 'Successfully Create', id: new_product.id}, status: 200
    else
      render json: {msg: 'Could not create', error: new_product.errors.messages}, status: 409
    end
  end

  private
  def product_params
    params.permit(:name, :price, :inventory, :category)
  end
end
