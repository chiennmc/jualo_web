class Category < ApplicationRecord
  has_many :products

  has_many :brand_details
  has_many :brands, through: :brand_details
end
