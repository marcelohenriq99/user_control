Rails.application.routes.draw do
  resources :profile_accesses
  resources :user_profiles
  resources :access_kinds
  resources :deliveries
  resources :addresses
  resources :clients
  get 'home' => 'home#index'
  root 'home#index'

  devise_for :users
  resources :products
  resources :stores
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
