Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'create-log/', to: 'pages#index_or_show'

  resources :dive_sites, only: [:new, :create, :index, :show], path: '/dive-sites' do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
    resources :logs, only: [:new, :create, :edit, :update]
  end
  resources :logs, only: [:index, :show]

  resources :dive_site, only: :destroy do
    resources :dive_site_tags, only: [:new, :create]
  end
end
