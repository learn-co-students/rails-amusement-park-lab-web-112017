Rails.application.routes.draw do
  root "static#index"

  resources :users
  resources :rides
  resources :attractions
end
