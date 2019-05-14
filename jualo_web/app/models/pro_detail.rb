class ProDetail < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :pro_spec

  has_many :pro_images
end
