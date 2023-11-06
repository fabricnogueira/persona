# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users, controllers: {
    registrations_controller: 'users/registrations',
    sessions_controller: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # Defina a rota para login como sessions
  # get 'login', to: 'login#new', as: 'login'
end
