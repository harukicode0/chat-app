Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only:[:edit, :update, :destroy]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
end
