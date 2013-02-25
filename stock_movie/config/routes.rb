StockMovie::Application.routes.draw do

  get "/home" => "home#homepage"
  get "/about" => "home#about"
  get "/faq" => "home#faq"

  get "/movies/enter" => "movies#enter"
  get "movies/show" => "movies#show"

  get "/stocks/enter" => "stocks#enter"
  get "/stocks/show" => "stocks#show"

  root :to => "home#homepage"

end
