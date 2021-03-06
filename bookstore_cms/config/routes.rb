Rails.application.routes.draw do
  root "books#index"
  resources :users, :except => [:index]
  resources :sessions, only: [:new, :create]
  resources :books
  resources :authors


  get '/login' => "sessions#new"
  post '/sessions' => "sessions#create"
  get '/logout' => "sessions#destroy"


  get '/auth/:provider/callback' => 'sessions#create'
    
  

end
