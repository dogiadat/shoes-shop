Rails.application.routes.draw do
  root "home_pages#home"
  get  "home_pages/home"
  get  "home_pages/page"
  get  "home_pages/archive"
  get  "/signup",  to: "users#new"
  post "/signup",  to: "users#create"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  resources :users
  namespace :admin do
    root "dashboard#index"
    get "dashboard/index"
  end
end
