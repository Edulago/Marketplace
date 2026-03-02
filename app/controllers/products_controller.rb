class ProductsController < ApplicationController
  def index
    @products = Product.includes(:category, :user).all
    @products = @products.where(category_id: params[:category_id]) if params[:category_id].present?
    @selected_category = Category.find_by(id: params[:category_id]) if params[:category_id].present?
  end

  def show
    @product = Product.includes(:category, :user).find(params[:id])
    @related_products = Product
      .includes(:category, :user, image_attachment: :blob)
      .where(category_id: @product.category_id)
      .where.not(id: @product.id)
      .limit(9)
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
