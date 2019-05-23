class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # ransack_alias :product, :name_or_status_cont
end
