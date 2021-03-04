Rails.application.routes.draw do

  devise_for :accounts
  root to: 'public#home'

  resources :posts, expect: [:index]
  resources :categories, expect: [:show]

  get '/faqs' => 'public#faqs', as: :faqs
  get '/scams' => 'public#scams', as: :scams
  get '/terms' => 'public#terms', as: :terms
  get '/safety' => 'public#safety', as: :safety

  get '/dashboard' => 'accounts#dashboard', as: :dashboard
  get 'c/:url' => 'categories#show', as: :show_category

  post 'message/send' => 'public#send_enquiry_to_user', as: :send_enquiry

end
