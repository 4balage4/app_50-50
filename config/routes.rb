Rails.application.routes.draw do
  devise_for :users
  root to: "tasks#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :tasks do
    get :duplicate, on: :member
    resources :templates, only: [:new, :create]
  end
  # Defines the root path route ("/")
  post "tasks/:id/mark_as_done", to: "tasks#mark_as_done", as: :mark_as_done

  resources :templates do
    resources :tasks, only: [:new, :create]
  end
  # root "articles#index"
  resources :contacts
end

# resources :categories, only: [:index, :show] ??
# resources :templates, only: [:index, :show]
# resources :kids, only [:show, :create]
# resources :housholds, only [:index]
