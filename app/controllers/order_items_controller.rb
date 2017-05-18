class OrderItemsController < ApplicationController

	def new
		@order = Order.find(params[:order_id])
		@order_item = OrderItem.new(order_id: params[:order_id])
		@elements = @order_item.order.product.elements
	end

	def create
		@order_item = OrderItem.new(order_id: params[:order_id])
	end

end

