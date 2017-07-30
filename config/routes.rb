Rails.application.routes.draw do
  get 'scores/new'

  get 'scores/create'

  devise_for :users
  root to: 'pages#home'

  get 'services', to: 'pages#services'
  get 'devis', to: 'pages#devis'
  get 'contact', to: 'pages#contact'
  get 'photos', to: 'pages#photos'
  get 'dashboard', to: 'pages#dashboard'
  get 'promotions', to: 'pages#promotions'
  get 'quotations_admin', to: 'pages#quotations_admin'
  get 'pathfilter', to: 'pages#pathfilter'
  get 'analytics', to: 'pages#analytics'



  resources :quotations, only: [:index, :edit, :update, :show]
  resources :promos, only: [:index]



  resources :categories do
    resources :albums
    resources :promos, only: [:new, :create, :edit, :update]
    resources :products do
      resources :scores, only: [:new, :create]
      resources :infos
      resources :powers
      resources :brands
      resources :quotations, only: [:new, :create]
    end
  end

  mount Attachinary::Engine => "/attachinary"
end
