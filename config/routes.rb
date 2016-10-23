Rails.application.routes.draw do
  resources :home, only: :index
  resource :assistance_provider
  resource :care_coordinator

  resources :qualified_needs, only: [:index, :create]

  get '/login', to: 'login#index', as: 'new_login'
  post '/login', to: 'login#create', as: 'login'
  get '/logout', to: 'login#destroy', as: 'logout'

  resources :events, only: [:index, :create, :update, :show]

  get '/assistance_provider_dashboard', to: 'assistance_provider_dashboard#index'
  get '/assistance_provider_dashboard/pledge/:id', to: 'assistance_provider_dashboard#pledge', as: 'pledge'
  get '/assistance_provider_dashboard/reject/:id', to: 'assistance_provider_dashboard#reject', as: 'reject'

  get '/care_coordinator_dashboard', to: 'care_coordinator_dashboard#index'

  get '/map_data', to: 'map_data#index'

  root to: 'home#index'
end
