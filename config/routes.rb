Rails.application.routes.draw do
  root to: 'pages#index'

  get '/about', to: 'pages#about'

  resources :doctors
  resources :patients
end
