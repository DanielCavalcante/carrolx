Rails.application.routes.draw do
  devise_for :controllers
  devise_for :users
  resources :cars
  root to: 'site#home'
end
