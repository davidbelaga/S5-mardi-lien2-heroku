Rails.application.routes.draw do
  root to: 'static_pages#home'

  get 'static_pages/home'
  get 'user_controller/new'
  get '/user' => 'user_controller#new', as: 'user'
  post '/user' => 'user_controller#create'
  get '/user/:name' => 'user_controller#show', as: 'show'
  #get 'user_controller/error'
  get '/error' => 'user_controller#error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
