ToDo::Application.routes.draw do

  resources :users
  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :tasks, :only => [:index, :create, :update, :destroy]
  resources :priorities, :only => [:index, :create, :update] do
    member do
      post :up
      post :down
    end
  end
  root :to => 'home#index'

end
