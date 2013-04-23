Addressbook::Application.routes.draw do
  root :to => 'home#index'
  resources :persons
end
