Rails.application.routes.draw do

  devise_for :accounts
  resources :posts
  root to: 'public#home'

  get '/faqs' => 'public#faqs', as: :faqs
  get '/scams' => 'public#scams', as: :scams
  get '/terms' => 'public#terms', as: :terms
  get '/safety' => 'public#safety', as: :safety

  resources :categories

end
