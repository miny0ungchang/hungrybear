Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end


  get "/search", to: "restaurants#search", as: :search

end
