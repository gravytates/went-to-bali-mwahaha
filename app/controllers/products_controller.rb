class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "New product successfully added!"
      redirect_to '/'
    else
      render :new
    end
  end

  def show
    # binding.pry
    @product = Product.find(params.fetch(:id))
    flash[:notice] = "Item successfully removed!"
    respond_to do |format|
      format.html { redirect_to product_path(@product) }
      format.js
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
