class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search
  # before_action :search_simple_form_for

  PER_PRODUCT_OF_PAGE = 20
 
  protected
 
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  # Search with name of product
  def set_search
    @search = Product.ransack(params[:q])
    @products_search = @search.result(distinct: true)
    @products = get_product_paginate(id: @products_search)
  end

  def get_products_detail(param)
    Product.joins(:pro_details, :category)
            .select("pro_details.id", "products.name", "products.status" , "pro_details.price")
            .where(param)
  end

  def get_product_paginate(param)
    get_products_detail(param).page(params[:page]).per(PER_PRODUCT_OF_PAGE)
  end
  
end
