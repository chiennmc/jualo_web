class StaticPagesController < ApplicationController
  def home
    @categories = Category.where(parent_id: 0)
    @category_car   = Category.find(1)
    @brands_car     = @category_car.brands.limit(5)

    @category_motor   = Category.find(2)
    @brands_motor     = @category_motor.brands.limit(5)

    # @product_motors = @category_motor.products.limit(6)
    @product_motors = Product.joins(:pro_details, :category).where(category_id: 2).limit(6)
  end
end
