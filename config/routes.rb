Rails.application.routes.draw do
#  get "restaurants", to: "restaurants#index"
#  get "restaurants/new", to: "restaurants#new"
#  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
end
