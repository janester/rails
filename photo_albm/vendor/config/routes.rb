PhotoAlbm::Application.routes.draw do
  root :to => "albums#index"
  resources :albums do
    member do
      get :filter
    end
  end
  resources :photos
end
