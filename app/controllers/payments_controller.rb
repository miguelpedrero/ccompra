class PaymentsController < ApplicationController

  def index
  end

  def create
  	cart = Cart.find(params[:cart_id]) 	#para mostrar los id del carro en pago
  	Payment.create(cart: cart)			#se crea un nuevo pago
  	redirect_to root_path				#redireccionar a index
  end



end
