Rails.application.routes.draw do
  root "static#index"

  resources :users
  resources :rides
  resources :attractions

  get "/signup", to: "users#new", as: "signup"
  get "/signin", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"
end
