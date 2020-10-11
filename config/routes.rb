Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :users do
    resources :journals
  end 

  post '/login' => 'users#login'
  post '/sessions' => 'sessions#create'

end
