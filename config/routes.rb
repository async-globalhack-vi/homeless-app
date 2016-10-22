Rails.application.routes.draw do
  resources :home
  resource :assistance_provider

  root to: 'home#index'
end
