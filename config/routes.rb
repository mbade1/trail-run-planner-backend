Rails.application.routes.draw do
  resources :users do
    resources :journals
  end 
  resources :trails

end
