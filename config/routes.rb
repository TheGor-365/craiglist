Rails.application.routes.draw do

  root to: 'public#home'
  
  resources :categories

end
