Rails.application.routes.draw do
  root 'characters#index'
  # resources :lists
  resources :characters

end
