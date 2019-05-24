class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @category = Category.first
    # @searchs = params[:search]
    # if @searchs.present?
    #   @name = @searchs["name"]
    #   puts "#{@name}"
    #   @product_search = Product.where("id LIKE ?", "#{@name}")
    #   puts "#{@product_search}"
    #   @products = get_product_paginate(id: @products_search)
    #   puts "#{@products}"      
    # end
  end

  def show
    @product_images = @product_detail.pro_images
  end

  private
    def set_product
      @product_detail = ProDetail.find(params[:id])
    end
    
end
