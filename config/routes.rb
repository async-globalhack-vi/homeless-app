Rails.application.routes.draw do
  resources :home, only: :index
  resource :assistance_provider
  resource :care_coordinator

  resources :qualified_needs, only: [:index, :create]

  get '/login', to: 'login#index', as: 'new_login'
  post '/login', to: 'login#create', as: 'login'
  get '/logout', to: 'login#destroy', as: 'logout'

  resources :events, only: [:index, :create]

  get '/assistance_provider_dashboard', to: 'assistance_provider_dashboard#index'
  get '/care_coordinator_dashboard', to: 'care_coordinator_dashboard#index'

  root to: 'home#index'
end
