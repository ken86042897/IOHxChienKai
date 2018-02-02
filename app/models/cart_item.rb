class CartItem < ApplicationRecord
  #attr_reader :product_id, :product_num, :product_price
  belongs_to :cart
  belongs_to :user
  # def initialize(product_id, quantity = 1)
  #   @product_id = product_id
  #   @quantity = quantity
  # end
  def add(product_id)

  end
  def increment(n = 1)
    @quantity += n
  end

  def product
    Product.find_by(id: product_id)
  end

  def price
    product_price * product_num
  end
end
