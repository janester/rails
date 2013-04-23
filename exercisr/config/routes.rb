Exercisr::Application.routes.draw do
  root :to => 'exercises#index'
  resources :users
  resources :exercises do
    collection do
      get "chart/:activity", :action => "chart"
    end
  end
  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'

end
