Rails.application.routes.draw do
  devise_for :advocates
  root "home#index"
  
  resources :advocates
  resources :states
  resources :cases
end
