Rails.application.routes.draw do

  root :to => 'pages#home'
  get '/users/edit' => 'users#edit'
  resources :users, :only => [:new, :create, :update, :index, :show]
  resources :categories
  resources :images

  post '/images/:image_id/likes' => 'likes#create', :as => 'likes'
  delete '/images/:image_id/likes' => 'likes#destroy'

  

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
