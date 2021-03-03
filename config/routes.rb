Rails.application.routes.draw do

  resources :posts
  root to: 'public#home'
  
  resources :categories

end
