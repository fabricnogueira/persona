# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  get 'home/about'
  root 'pages#home'
  get 'principal', to: 'home#principal', as: :principal

  # root 'posts#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  

  # Defina a rota para login como sessions
  # get 'login', to: 'login#new', as: 'login'
end
