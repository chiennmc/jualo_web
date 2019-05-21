class BrandsController < ApplicationController
  before_action :set_categories, only: [:index, :show]
  before_action :set_product, only: [:index, :show]
  before_action :get_value_spec, only: [:show]

  def index
  end

  def show
  end
  
  private
    def set_product
      @products = Product.joins(:pro_details, :category)
            .select("pro_details.id", "products.name", "products.status" , "pro_details.price")
            .where(category_id: @categories)
    end

    def set_categories
      @categories = Category.joins(:brands, :brand_details).select("categories.id").where("brands.id": params[:id])
    end
    
    def get_value_spec
      @types         = column_name_distinct(:name)
      @transmissions = column_name_distinct(:transmission)
      @colors        = column_name_distinct(:color)
      @years         = column_name_distinct(:year)
      @fuels         = column_name_distinct(:fuel)
    end

    def column_name_distinct(title)
      ProSpec.select(title).distinct
    end
end
