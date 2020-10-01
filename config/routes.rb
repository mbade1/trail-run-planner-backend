Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :users do
    resources :journals
  end 
  resources :trails

end
