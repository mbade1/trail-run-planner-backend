Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :users do
    resources :trails
    resources :journals
  end 
  resources :trails

  post '/login' => 'users#login'

end
