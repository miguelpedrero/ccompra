class CartsController < ApplicationController


  def index
  	@carts = Cart.all
  	@orders = @cart.orders
  end


  def show
  	@cart = Cart.find(params[:id])
  	@orders = @cart.orders

  end



  def add
  	@product = Product.find(params[:product_id])
  	@cart = current_user.carts.last
  	@cart.orders.build(product: @product)
  	@cart.save
  	

  	if @cart.save
  		flash[:notice] = "El producto ha sido agregado con exito"
  	else
  		flash[:notice] = "Algo Salio mal "
  	end

  	redirect_to :back
  end


end
