Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  resources :categories
  resources :notices
  root to: "books#index"
  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
