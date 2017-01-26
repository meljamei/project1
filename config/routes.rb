Rails.application.routes.draw do

  root :to => 'pages#home'
  get '/users/edit' => 'users#edit'

  resources :users do
   member do
     get :following, :followers
   end
 end

  resources :users, :only => [:new, :create, :update, :index, :show]
  resources :categories
  resources :images
  resources :relationships, only: [:create, :destroy]

  post '/images/:image_id/likes' => 'likes#create', :as => 'likes'
  delete '/images/:image_id/likes' => 'likes#destroy'


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
