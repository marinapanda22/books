Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  resources :books do
  resources :notices
  end
  resources :categories


  root to: "books#index"

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
