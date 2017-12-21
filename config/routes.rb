Rails.application.routes.draw do
  resources :attractions
  resources :users, only: [:new, :show, :edit, :update, :create]
  delete "/attractions/:id", to: "attractions#destroy", as: "delete_attraction"
  get "/signup", to: "users#new", as: "signup"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  root to:"attractions#index"
end
