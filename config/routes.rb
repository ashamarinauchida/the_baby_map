Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'pages#home'
  get 'our_story', to: 'pages#our_story'
  get 'contact_us', to: 'pages#contact'

  resources :locations
end
