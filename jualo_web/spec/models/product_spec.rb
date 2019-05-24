require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "Associations" do
    it { should belong_to(:category) }

    it { should have_many(:pro_details) }
    it { should have_many(:users).through(:pro_details) }
  end
  
end
