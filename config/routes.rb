Rails.application.routes.draw do

  root :to => 'pages#home'
  get '/users/edit' => 'users#edit'
  resources :users, :only => [:new, :create, :update, :index, :show]
  resources :categories
  resources :images

  get '/categories' => 'categories#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
