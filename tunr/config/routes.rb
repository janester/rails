Tunr::Application.routes.draw do

  root :to => 'home#index'
  resources :users, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :artists, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  resources :albums do
    member do
      get 'purchase'
      post 'bought'
    end
  end


  resources :genres, :except => [:edit] do
    collection do
      get 'edit'
    end
  end

  resources :songs do
    member do
      get 'purchase'
      get 'refund'
      post 'returned'
    end
  end

  post '/songs/bought' => 'songs#bought'
  # post '/songs/returned' => 'songs#returned'

resources :mixtapes

end
