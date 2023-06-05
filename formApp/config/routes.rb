Rails.application.routes.draw do
  get 'locations/index'
  get 'land_regularizations/new'
  get 'land_regularizations/create'
  resources :land_regularizations, only: [:new, :create]
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
