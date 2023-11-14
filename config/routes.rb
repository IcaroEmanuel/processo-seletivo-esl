Rails.application.routes.draw do
  root to: "sessions#new"

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :sessions
  resources :users, only: [:new, :create]
  resources :rooms, only: [:index, :destroy] do
    get 'details', to: 'rooms#details'
    post 'create', to: 'rooms#create'
  end
end
