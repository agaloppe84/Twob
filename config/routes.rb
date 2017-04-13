Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'services', to: 'pages#services'
  get 'devis', to: 'pages#devis'
  get 'contact', to: 'pages#contact'
  get 'photos', to: 'pages#photos'
  get 'dashboard', to: 'pages#dashboard'
  get 'promotions', to: 'pages#promotions'
  get 'confirmation', to: 'quotations#confirmation'
  get 'quotations_admin', to: 'pages#quotations_admin'
  get 'pathfilter', to: 'pages#pathfilter'
  get 'analytics', to: 'pages#analytics'



  resources :quotations, only: [:index, :new, :create, :edit, :update]
  resources :promos, only: [:index]


  resources :categories do
    resources :albums
    resources :promos, only: [:new, :create, :edit, :update]
    resources :products do
      resources :infos
      resources :powers
      resources :brands
    end
  end

  mount Attachinary::Engine => "/attachinary"
end
