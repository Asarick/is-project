Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :farmers, only: [:index, :show, :create]
      resources :crops, only: [:index]
      resources :insurance_packages, only: [:index]
      resources :premium_types, only: [:index]
      resources :insurances, only: [:create, :show]

      resources :user, only: [:post, :delete]
      post '/api/signup', to: 'users#create'
      post '/api/login', to: 'sessions#create'
      delete '/api/logout', to: 'sessions#destroy'
    end
  end
end