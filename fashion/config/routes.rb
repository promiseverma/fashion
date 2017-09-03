Rails.application.routes.draw do
  root to: 'visitors#index'
  resources :users

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  namespace :user do
  	resources :categories
  	resources :new_collections
  end
end
