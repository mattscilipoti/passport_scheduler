Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :klasses
    root to: "users#index"
  end
  devise_for :users
  resources :users
  # root, see: config/initializers/high_voltage.rb
end
