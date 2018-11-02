Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  #this comes by default
  #get 'pages/home'
  #get 'pages/about'
  #get 'pages/contact'
  #################
  resources :blogs do
    member do
      get :toggle_status
     end
  end
  #adding this on class 64 custon routes

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
