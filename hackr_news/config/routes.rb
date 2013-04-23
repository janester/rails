HackrNews::Application.routes.draw do
  root :to => 'stories#index'
  resources :stories do
    collection do
      post "scrape"
    end
  end

end
