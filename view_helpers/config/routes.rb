ViewHelpers::Application.routes.draw do

  root :to => 'home#homepage'
  get '/numbers' => 'home#numbers'
  get '/text2' => 'home#text', :as =>'text'
  get '/assets' => 'home#assets'
  get 'url' => 'home#url'

end
