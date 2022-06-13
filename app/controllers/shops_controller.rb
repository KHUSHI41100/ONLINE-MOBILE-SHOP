class ShopsController < ApplicationController
  def index
    @products=Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product=Product.find(params[:id])
  end
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

end
