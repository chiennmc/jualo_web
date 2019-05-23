Rails.application.routes.draw do
  resources :brands,        only: [:index, :show]
  resources :categories,    only: [:index, :show]
  resources :products,      only: [:index, :show]
  resources :products do
    collection do
      match "search" => "products/search", via: [:get, :post], as: :set_search
    end
  end
  root "static_pages#home"
  # root "products#show"
  devise_for :users
  as :user do
    get      "/signin",      to: "devise/sessions#new"
    get      "/signup",      to: "devise/registrations#new"
    delete   "/signout",     to: "devise/sessions#destroy"
    get      "/profile",     to: "devise/#method"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
