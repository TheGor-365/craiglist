Rails.application.routes.draw do

  devise_for :accounts
  resources :posts
  root to: 'public#home'
  
  resources :categories

end
