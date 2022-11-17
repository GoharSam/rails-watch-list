Rails.application.routes.draw do
  get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :new, :create, :show]
  # Defines the root path route ("/")

  # root "articles#index"

end
