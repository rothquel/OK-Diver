Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'create-log/', to: 'pages#index_or_show'
  get 'profile/:id', to: 'pages#profile', as: :profile

  resources :reviews, only: [:edit, :update, :destroy]

  resources :dive_sites, only: [:new, :create, :index, :show], path: '/dive-sites' do
    resources :reviews, only: [:new, :create]
    resources :logs, only: [:new, :create, :edit, :update]
  end
  resources :logs, only: [:index, :show]

  resources :dive_site, only: :destroy do
    resources :dive_site_tags, only: [:new, :create]
  end

  resources :dive_site, only: :index do
    member do
      post 'toggle_favorite', to: "dive_site#toggle_favorite"
      # Route generated: cocktails/:id/toggle_favorite
    end
  end
end
