Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'

  resources :medicines
  resources :consultations
  resources :doctors
  resources :patients

  get '/about', to: 'pages#about'

end
