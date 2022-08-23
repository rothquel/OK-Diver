Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :dive_sites, only: [:new, :create, :index, :show] do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :logs, only: [:new, :create, :index, :show, :edit, :update]

  # Defines the root path route ("/")
  # root "articles#index"
end
