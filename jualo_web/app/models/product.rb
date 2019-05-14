class Product < ApplicationRecord
  belongs_to :category

  has_many :pro_details
  has_many :users, through: :pro_details
end
