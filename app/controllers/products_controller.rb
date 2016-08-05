class ProductsController < ApplicationController
  def index
  	@name = User.find(session[:user_id])
  	@products = Product.where.not(user_id: session[:user_id])
  end	
  def destroy
  	product = Product.find_by(params[:id])
  	product.destroy
  	redirect_to '/dashboards'
  end
end
