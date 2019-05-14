class Brand < ApplicationRecord
  has_many :brand_details
  has_many :categories, through: :brand_details
end
