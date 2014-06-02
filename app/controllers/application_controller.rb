class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery

  private

	 def current_cart
	   Cart.find(session[:cart_id])      # encuentra el id del carro
	 rescue ActiveRecord::RecordNotFound # y si no lo encuentra...
	   cart = Cart.create                # crea un nuevo carro "cart"
	   session[:cart_id] = cart.id       # y al id de la sesion le mete el id del carro creado
	   cart                              # y al final devuelve el carro creado
	 end
end
