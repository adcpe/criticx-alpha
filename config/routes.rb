Rails.application.routes.draw do
  resources :games, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :companies, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # Routes for users
  resources :users, only: [:new, :create]

  # Routes for sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  delete 'login', to: 'sessions#destroy'
end
