Rails.application.routes.draw do
  root to: 'home#index'
  resources :companies, only: [:new, :create, :show, :index, :edit, :update]
  resources :departaments, only: [:new, :create, :show, :index, :edit, :update]
  resources :people, only: [:new, :create, :show, :index, :edit, :update]
  resources :emails, only: [:new, :create, :show, :index, :edit, :update]
  resources :computer_types, only: [:new, :create, :show, :index, :edit, :update]
  resources :computers, only: [:new, :create, :show, :index, :edit, :update]
  resources :operating_systems, only: [:new, :create]
end
