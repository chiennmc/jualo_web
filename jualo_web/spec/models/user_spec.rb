require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "Associations" do
    it { should have_many(:pro_details) }
    it { should have_many(:products).through(:pro_details) }
  end
  
end
