class Order < ApplicationRecord
  belongs_to :user
  has_many :lineitems
  has_many :products, through: :lineitems

  def add_product(product)
    current_item = lineitems.find_by(product_id: product.id)
    if current_item
      current_item.increment(:quality)
    else
      current_item = lineitems.build(product_id: product.id)
    end
    current_item
  end
end