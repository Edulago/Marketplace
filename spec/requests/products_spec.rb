require "rails_helper"

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    it "returns http success" do
      get products_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /products/:id" do
    it "returns http success" do
      user = create(:user)
      category = Category.create!(name: "Hardware")
      product = Product.create!(
        user: user,
        category: category,
        title: "Produto teste",
        description: "Descrição teste",
        price: 100
      )

      get product_path(product)
      expect(response).to have_http_status(:success)
    end
  end
end
