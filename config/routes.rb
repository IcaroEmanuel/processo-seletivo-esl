Rails.application.routes.draw do
  root to: "sessions#new"
  get 'rooms', to: 'rooms#index'
  get 'rooms/details', to: 'rooms#details'
  post 'rooms/create', to: 'rooms#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :sessions
  resources :users, only: [:new, :create]
end
