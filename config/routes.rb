Rails.application.routes.draw do
  resources :journals
  resources :users do
    resources :journals
  end 
  resources :trails

end
