Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'
  get '/tasks/answer', to: 'tasks#answer'
  get 'tasks/index'
  get 'tasks/answer'
end
