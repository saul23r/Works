Rails.application.routes.draw do

  root 'static#main'

  get '/main' => 'static#main'
  get '/user' => 'static#user'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users
  end