Rails.application.routes.draw do
  resources :class_proposals
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  devise_for :users
  resources :users
  # root, see: config/initializers/high_voltage.rb
end
