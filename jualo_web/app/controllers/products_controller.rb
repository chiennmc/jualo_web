class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @category = Category.first
  end

  def show
    @product_images = @product_detail.pro_images
  end

  private
    def set_product
      @product_detail = ProDetail.find(params[:id])
    end
    
end
