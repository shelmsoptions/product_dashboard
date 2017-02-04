class ProductsController < ApplicationController
  def index
  end

  def products
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new       #  needed?
    @categories = Category.all
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def create
    # product = Product.create( set_params )
    category = Category.find(set_params[:category])
    product = Product.new(name: set_params[:name], description: set_params[:description], pricing: set_params[:pricing], category: category)
    if product.save
      redirect_to "/products"
    else
      redirect_to "/products/new"
    end
  end

  def update
    category = Category.find(set_params[:category])
    product = Product.find(params[:id])
    prod = Product.find(params[:id]).update( name: set_params[:name], description: set_params[:description], pricing: set_params[:pricing], category: category )
    redirect_to "/products/#{params[:id]}"
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to "/products"
  end

  private
  def set_params
    params.require(:product).permit(:name, :description, :pricing, :category)
  end
end
