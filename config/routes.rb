Rails.application.routes.draw do
  
  resources :gossips
  devise_for :moussaillons

  root 'home#home'

end
