Basics::Application.routes.draw do
  get "/home" => "home#homepage"
  get "/about" => "home#about"
  get "/faq" => "home#faq"

  get "/dogs" => "dogs#dogs"
  get "/dogs/faq" => "dogs#faq"
  get "/dogs/new" => "dogs#new"
  get "/dogs/faq2" => "dogs#faq2"

  get "/auto/:color" => "auto#color"
  get "/auto/:hp/:torque" => "auto#engine"

  get "calc/:x/:y/:operator" => "calc#calc"
  root :to => 'home#homepage'

  get "/funny" => "funny#lol"

end
