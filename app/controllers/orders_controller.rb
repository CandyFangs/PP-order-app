class OrdersController < ApplicationController

	def new
		@order = Order.new(product_id: params[:product_id])
		@product = Product.find(params[:product_id])
	end

	def create
		@order = Order.new(product_id: order_params[:product_id])
		@product = Product.find(order_params[:product_id])
		if @order.save!
		 	flash.now[:notice] = "Proces zamawiania został rozpoczęty"
			redirect_to new_order_order_item_path(@order)
		else
		 	flash[:error] = "Nie udało się zapisać"
		 	render :new
		end
	end

	private 

	def order_params
		params.require(:order).permit(:product_id, :category_id)
	end
end