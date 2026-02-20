class HomeController < ApplicationController
  def index
    @products = Product.includes(:category, :user).all
  end
end
