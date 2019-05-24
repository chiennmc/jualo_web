require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(Category).to have_http_status(:success)
    end

    it "returns products" do
      get :show
      expect(assigns(:products)).to eq([products]) 
    end
    
    it "returns category" do
      # expect(Category.count).to  
    end
    
  end
  
end
