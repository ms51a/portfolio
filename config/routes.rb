Rails.application.routes.draw do
  resources :users
  root 'top#index'

  resources :welcomes, only: :index
  resource :login, only: %i[new create]
  resource :logout, only: %i[ show ]
  resources :tasks
end

