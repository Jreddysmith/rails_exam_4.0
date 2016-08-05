class SoldsController < ApplicationController
	def create
		product = Product.find(params[:id])
		seller = product.user.first_name + " " + product.user.last_name
		Sold.create(product: product.product, amount: product.amount, user_id: session[:user_id], seller_id: product.user_id, seller: seller)
		product.destroy
		redirect_to "/dashboards"
	end 
end 
