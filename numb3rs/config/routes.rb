Numb3rs::Application.routes.draw do

  root :to => 'home#index'
  get "/word_total" => "home#word_total"
  get "/word" => "home#word"

end
