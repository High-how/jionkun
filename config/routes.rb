Rails.application.routes.draw do
  devise_for :users
  root "members#index"
  resources :users, only: [:edit, :update]
  resources :members, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
