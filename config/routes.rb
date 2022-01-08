Rails.application.routes.draw do
  root "inventory#index"

  get "/inventory/:id/confirm_destroy", to: "inventory#confirm_destroy"
  
  resources :inventory
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
