require 'rails_helper'

RSpec.describe BrandDetail, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "Associations" do
    it { should belong_to(:brand) }
    it { should belong_to(:category) }
  end
  
end
