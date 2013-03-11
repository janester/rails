Tradr::Application.routes.draw do
  root :to => 'users#index'
  resources :users
  resources :stocks do
    member do
      get "/chart" => "stocks#chart"
    end
  end
  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'

end
