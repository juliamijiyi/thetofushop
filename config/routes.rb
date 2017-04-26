Rails.application.routes.draw do

  root 'products#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :customers, only: [:new, :create]
  resources :carts, only: [:show]
  resources :products, only: [:index, :show]

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  get '/register', to: 'customers#new'
end
