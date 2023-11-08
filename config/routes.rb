Rails.application.routes.draw do
  root to: "sessions#new"
  get 'rooms', to: 'rooms#index'

  get 'sessions/new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :sessions
  resources :users, only: [:new, :create]
end
