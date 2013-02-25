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

  resources :albums, :except => [:edit] do
    collection do
      get 'edit'
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
    end
  end

  post '/songs/bought' => 'songs#bought'

resources :mixtapes

end
