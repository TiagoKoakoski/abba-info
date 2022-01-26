Rails.application.routes.draw do
  root to: 'home#index'
  resources :companies, only: [:new, :create, :show, :index, :edit, :update]
  resources :departaments, only: [:new, :create, :show, :index, :edit, :update]
end
