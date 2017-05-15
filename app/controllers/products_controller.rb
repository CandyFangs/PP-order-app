class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash.now[:notice] = "W bazie utworzono nowy produkt"
			redirect_to products_path
		else
			flash[:error] = "Nie udało się zapisać"
			render :new
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			flash[:notice] = "Zmodyfikowano"
			redirect_to products_path
		else
			flash[:error] = "Nie udało się zapisać zmian"
			render :edit
		end
	end

	def destroy
		@product.destroy
		flash[:notice] = "Usunięto rekord #{product.id}:#{product.model}"
		redirect_to products_path
	end

	private

	def product_params
		params.require(:product).permit(:type, :model, :price)
	end

end