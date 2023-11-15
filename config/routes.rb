# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts, only: [:index, :create]
  # root 'pages#home'
  root 'posts#index'

  get "/posts", to: "posts#index"
  get "/posts/:id", to: "posts#show"

  devise_for :users, controllers: {
    registrations_controller: 'users/registrations',
    sessions_controller: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # Defina a rota para login como sessions
  # get 'login', to: 'login#new', as: 'login'
end
