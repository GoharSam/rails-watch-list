Rails.application.routes.draw do
  root to: "lists#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  # Defines the root path route ("/")
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
  # root "articles#index"
end
