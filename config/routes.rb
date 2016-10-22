Rails.application.routes.draw do
  resources :home
  resource :assistance_provider
  resource :care_coordinator
  resources :login
  post 'events', to: 'events#create'

  get '/assistance_provider_dashboard', to: 'assistance_provider_dashboard#index'
  get '/care_coordinator_dashboard', to: 'care_coordinator_dashboard#index'

  root to: 'home#index'
end
