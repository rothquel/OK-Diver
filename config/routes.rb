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
  # custom wishlist page
  get 'wishlist', to: 'dive_sites#wishlist'

  resources :logs, only: [:index, :show]

  resources :dive_site, only: :destroy do
    resources :dive_site_tags, only: [:new, :create]
  end

  resources :dive_sites, only: :index do
    member do
      post 'toggle_favorite', to: "dive_sites#toggle_favorite"
      # Route generated: dive_site/:id/toggle_favorite
    end
  end

  # get 'dive-sites/', to: 'appointments#my_agent_appointments'

end
