Rails.application.routes.draw do
  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/new'

  get 'users/create'

  get 'users/index'

  resources :users,:attractions
  get '/', to: 'attractions#index', as: 'root'
end
