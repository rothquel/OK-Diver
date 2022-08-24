Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :dive_sites, only: [:new, :create, :index, :show], path: '/dive-sites' do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
    resources :logs, only: [:new, :create, :edit, :update]
  end
  resources :logs, only: [:index, :show]

  get 'create-log/1', to: 'pages#index_or_show'
  get 'create-log/2', to: 'pages#log'
  get 'create-log/3', to: 'pages#review'
  get 'create-log/success', to: 'pages#success'
end
