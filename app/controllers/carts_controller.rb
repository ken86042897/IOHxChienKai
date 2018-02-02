class CartsController < ApplicationController
	
  def add
  	# current_user.cart.cart_items.add(product_id: params[:id])
  	item=CartItem.new(product_id: params[:id],product_num: params[:product_num],product_price: params[:price])
  	item.cart=current_user.cart
  	item.user=current_user
  	item.save!
  	# @p_id=params[:id]
    # current_cart.add_item(params[:id])
    #session[:cart9487] = current_cart.serialize
    #product_id = params[:body_height].to_f
    # @p_num = params[:product_num].to_f 
    #product_price = params[:body_height].to_f
    redirect_to products_path, notice: "已加入購物車"
  end

  def new
  	current_user.cart.cart_items.new(product_id: params[:id])
  	end

  def destroy
    #session[:cart9487] = nil
    redirect_to products_path, notice: "購物車已清空"
  end
end
