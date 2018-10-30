Rails.application.routes.draw do
  resources :portfolios
  #this comes by default
  #get 'pages/home'
  #get 'pages/about'
  #get 'pages/contact'
  #################
  resources :blogs
  #adding this on class 64 custon routes

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
