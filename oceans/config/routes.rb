Oceans::Application.routes.draw do
  get "/oceans" => 'oceans#index'
  get "/oceans/new" => 'oceans#new'
  post "/oceans" => 'oceans#create'
  get "/oceans/:id" => 'oceans#show', :as => 'ocean'
  post "/oceans/:id/delete" => 'oceans#delete', :as => 'delete'
  get "/oceans/:id/edit" => 'oceans#edit', :as => 'edit'
  post "/oceans/:id" => 'oceans#update'
  root :to => 'oceans#index'
end
