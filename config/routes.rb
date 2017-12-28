Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'

  root 'users#index'

  resources :attractions, except: [:destroy]
  resources :users, except: [:destroy]

  post '/rides/new', to: 'rides#create'
end
