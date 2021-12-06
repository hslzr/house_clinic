Rails.application.routes.draw do
  root to: 'pages#index'

  resources :medicines
  resources :consultations
  resources :doctors
  resources :patients

  get '/about', to: 'pages#about'

end
