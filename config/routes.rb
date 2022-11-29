Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tasks # Defines the root path route ("/")
  # root "articles#index"
  resources :contacts, only: [:index, :show, :create, :new]
end

# resources :categories, only: [:index, :show] ??
# resources :templates, only: [:index, :show]
# resources :kids, only [:show, :create]
# resources :housholds, only [:index]
