Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    devise_for :users
    root 'main#index'
    resources :images
    #get 'main/sign_up'
    #get 'main/sign_in'
    match '/newimage',  to: 'images#new', via: 'get'
    match '/addimage',  to: 'images#add', via: 'get'
    match '/showimage', to: 'images#show', via: 'get'
    match '/indeximage', to: 'images#index', via: 'get'

end
