class StaticPagesController < ApplicationController
  def home
    @categories = Category.where(parent_id: 0)
    @category_car   = Category.find(1)
    @brands_car     = @category_car.brands.limit(5)

    @category_motor   = Category.find(2)
    @brands_motor     = @category_motor.brands.limit(5)

    # 1 is id of category car
    # 2 is id of category motor
    @product_motors = get_product(2)
    @product_cars   = get_product(1)
  end


  def get_product(id)
    Product.joins(:pro_details, :category)
            .select("pro_details.id", "products.name", "pro_details.price")
            .where(category_id: id).limit(6)
  end
  
end
