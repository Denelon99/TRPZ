Rails.application.routes.draw do
  resources :users
  resources :storages
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  get 'welcome', to: 'welcome#index'
  get 'index', to: 'post#index'
end
