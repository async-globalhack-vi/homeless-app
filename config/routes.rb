Rails.application.routes.draw do
  resources :home
  resource :assistance_provider

  resources :login
  get '/assistance_provider_dashboard', to: 'assistance_provider_dashboard#index'

  root to: 'home#index'
end
