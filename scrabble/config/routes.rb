Scrabble::Application.routes.draw do

  root :to => 'home#index'
  resources :channels do
    collection do
      get "refresh"
    end
  end
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'

end
