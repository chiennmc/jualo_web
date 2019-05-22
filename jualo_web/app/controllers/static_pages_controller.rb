class StaticPagesController < ApplicationController

  def home
    @categories = Category.where(parent_id: 0)

    @brands_car     = set_brand(1)
    @brands_motor   = set_brand(2)

    # 1 is id of category car
    # 2 is id of category motor
    @product_motors = get_product(2)
    @product_cars   = get_product(1)
  end

  def get_product(id)
    # Change limit method to last method to get 6 value is added final
    Product.joins(:pro_details, :category)
            .select("pro_details.id", "products.name", "pro_details.price")
            .order("pro_details.id")
            .where(category_id: id).limit(6)
  end
  
  def set_brand(id)
    @category = Category.find(id)
    @brands   = @category.brands.limit(5)
  end

end
