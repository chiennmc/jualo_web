class ProductsController < ApplicationController
  before_action :set_product, only: [:index, :show]

  def index
  end

  def show
    @product_images = @product_detail.pro_images
  end

  private
    def set_product
      @product_detail = ProDetail.find(params[:id])
    end
  
end
