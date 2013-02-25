Routing::Application.routes.draw do

  get "/a" => "a#a"
  get "/b" => "a#b"
  get "/c" => "a#c"
  get "/d" => "a#d"
  get "/e" => "a#e"
  get "/f" => "a#f"



  root :to => 'a#a'

end
