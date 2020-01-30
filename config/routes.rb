Rails.application.routes.draw do
  resources :favorites, only: :create

  root to: 'home#index'
  devise_for :users
end
