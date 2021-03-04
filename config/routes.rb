Rails.application.routes.draw do

  devise_for :accounts
  root to: 'public#home'

  resources :posts, expect: [:index]
  resources :categories

  get '/faqs' => 'public#faqs', as: :faqs
  get '/scams' => 'public#scams', as: :scams
  get '/terms' => 'public#terms', as: :terms
  get '/safety' => 'public#safety', as: :safety
  get '/dashboard' => 'accounts#dashboard', as: :dashboard

end
