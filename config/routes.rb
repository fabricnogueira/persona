Rails.application.routes.draw do
  resources :auths
  root 'home#index'
end
