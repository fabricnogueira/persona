# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  # Defina a rota para login como sessions#new
  get 'login', to: 'login#new', as: 'login'
end
