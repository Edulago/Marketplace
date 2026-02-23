class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category, :user).all
    @products = @products.where(category_id: params[:category_id]) if params[:category_id].present?
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
