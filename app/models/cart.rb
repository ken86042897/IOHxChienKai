class Cart < ApplicationRecord
  attr_reader :items,:product_id,:product_num
  belongs_to :user
  has_many :cart_items

  # def initialize(items = [])
  #   @items = items
  # end

    # def init(items=[])
    #   @items=items
    # end


  def add_item(product_id)
    found_item=self.cart_items.find_by(product_id: product_id)
    #用db的角度想新增
    # found_item = @items.find { |item| item.product_id == product_id }
    
    if found_item
      found_item.increment
    else
      # @cart.new(product_id: product_id)
      @cart.cart_items.new(product_id: product_id)
      # @items << CartItem.new(product_id)
  end
  end

  # def empty?
  #   items.empty?
  # end
  #下面新加的
  #sum=0
  #def total_price
    #sum+=cart_items.product_price*cart_item.product_num
    #self.reduce(0) { |sum, cart_item| sum + (cart_item.product_num)*(cart_item.product_price) }
    #end

  # def serialize
  #   all_items = items.map { |item|
  #     { "product_id" => item.product_id, "quantity" => item.quantity}
  #   }

  #   { "items" => all_items }
  # end

  # def self.from_hash(hash)
  #   if hash.nil?
  #     new []
  #   else
  #     new hash["items"].map { |item_hash|
  #       CartItem.new(item_hash["product_id"], item_hash["quantity"])
  #     }
  #   end
  # end
end
