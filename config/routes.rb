Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :posts, only: [:new, :create, :show, :index, :edit, :update, :destroy]
  resources :users, only: [:show]
end

