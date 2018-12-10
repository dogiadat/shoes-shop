Rails.application.routes.draw do
  root "home_pages#home"
  get  "/signup",  to: "users#new"
  post "/signup",  to: "users#create"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  get "/nike", to:"products#nike"
  get "order", to: "order#index"
  resources :users
  resources :products
  resources :categories
  namespace :admin do
    root "dashboard#index"
    get "dashboard/index"
    resources :categories
    resources :products
  end
end
