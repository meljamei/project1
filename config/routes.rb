Rails.application.routes.draw do

  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :update, :index]
  resources :categories

  get '/categories' => 'categories#index'
  get '/users/edit' => 'users#edit'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
