Rails.application.routes.draw do
  get 'home/index'
  get 'users/show'
  devise_for :users
  root to: "home#index"
  get '/my_profile', to: 'users#show'
  resources :users, only: :show
  resources :games, only: [:index, :show, :new, :create, :edit, :update]
  resources :companies, only: [:index, :show, :new, :create, :edit, :update]
end
