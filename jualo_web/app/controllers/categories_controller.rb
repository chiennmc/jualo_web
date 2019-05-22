class CategoriesController < ApplicationController
  before_action :set_product, only: [:index, :show]
  before_action :set_category, only: [:index, :show]

  def index
  end

  def show
  end

  private
    def set_product
      @products = Product.joins(:pro_details, :category)
            .select("pro_details.id", "products.name", "products.status" , "pro_details.price")
            .where(category_id: params[:id])
            .page(params[:page])
    end
    
    def set_category
      @category = Category.find(params[:id])
    end
    
end