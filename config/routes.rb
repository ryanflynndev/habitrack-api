Rails.application.routes.draw do
  resources :users, only: [:create, :show]
  resources :habits, only: [:create, :update, :destroy]
  resources :user_habits only: [:create]
end
