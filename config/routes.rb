Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :companies, only: %i[new create show index edit update]
  resources :departaments, only: %i[new create show index edit update]
  resources :people, only: %i[new create show index edit update]
  resources :emails, only: %i[new create show index edit update]
  resources :computer_types, only: %i[new create show index edit update]
  resources :computers, only: %i[new create show index edit update]
  resources :operating_systems, only: %i[new create]
  resources :password_doors, only: %i[new create]
end
