Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :dive_sites, only: [:new, :create, :index, :show]
  resources :logs, only: [:new, :create, :index, :show, :edit, :update]
  resources :reviews, only: [:new, :create, :edit, :update, :destroy]

  # Defines the root path route ("/")
  # root "articles#index"
end
