class ProductsController < ApplicationController
  def index
  end

  def products
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    product = Product.create( set_params )
    redirect_to "/products"
  end

  def update
    prod = Product.find(params[:id]).update( set_params )
    redirect_to "/products/#{params[:id]}"
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to "/products"
  end

  private
  def set_params
    params.require(:product).permit(:name, :category_id, :description, :pricing)
  end
end
