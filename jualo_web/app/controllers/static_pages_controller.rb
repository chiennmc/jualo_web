class StaticPagesController < ApplicationController

  def home
    @categories = Category.where(parent_id: 0)

    @brands_car     = set_brand(1)
    @brands_motor   = set_brand(2)

    # 1 is id of category car
    # 2 is id of category motor
    @product_motors = get_products_detail(category: 2).limit(6)
    @product_cars   = get_products_detail(category: 1).limit(6)
  end

  def set_brand(id)
    @category = Category.find(id)
    @brands   = @category.brands.limit(5)
  end

end
