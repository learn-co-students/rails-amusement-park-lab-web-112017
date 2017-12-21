Rails.application.routes.draw do
  # get 'users/show'
  #
  # get 'users/edit'
  #
  # get 'users/update'



  # get 'users/create'
  #
  # get 'users/index'
  get '/users/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  resources :users,:attractions
  get '/attractions', to: 'attractions#index'
  delete '/sessions', to: 'sessions#destroy'
  # get '/rides/new', to: 'rides#new'
  post '/rides/new', to: 'rides#create'


  #, as: 'root'
end
