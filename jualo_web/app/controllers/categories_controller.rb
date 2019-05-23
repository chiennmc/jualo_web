class CategoriesController < ApplicationController
  before_action :set_product, only: [:show]
  before_action :set_category, only: [:show]

  def index
  end

  def show
  end

  private
    def set_product
      @products = get_product_paginate(category: params[:id])
    end
    
    def set_category
      @category = Category.find(params[:id])
    end
    
end