class ItemsController < ApplicationController
  def index
    @products=Product.all
    render json: { products: @products }
    

  end

  def show
    @product = Product.find(params[:id])
    render json: { product: Product.find(params[:id]) }
    
  end
end
