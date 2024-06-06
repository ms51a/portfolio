Rails.application.routes.draw do
  root 'home#index'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show]
end

