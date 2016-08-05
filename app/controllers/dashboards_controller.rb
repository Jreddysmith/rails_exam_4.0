class DashboardsController < ApplicationController
  def index
  	@name = User.find(session[:user_id])
  	@products = Product.where(user_id: session[:user_id])
  	@sales = Sold.where(seller_id: session[:user_id])
  	@saletotal = 0
  	@sales.each do |e|
  		@saletotal += e.amount
  	end
  	@purchase = Sold.where(user_id: session[:user_id])
  	@ptotal = 0
  	@purchase.each do |p|
  		@ptotal += p.amount
  	end

  end
  def create
  	product = Product.new(products_params)
  	if product.save
  		redirect_to '/dashboards'
  	end
  end

  private
  def products_params
  	params.require(:product).permit(:product, :amount, :user_id)
  end
end
