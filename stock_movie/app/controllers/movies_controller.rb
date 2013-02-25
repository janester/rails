
class MoviesController < ApplicationController
  def enter
  end

  def show
    @title = params[:title]
    @title = @title.split.join("+")
    @movie = HTTParty.get("http://www.omdbapi.com/?i=&t=#{@title}")
    @movie = JSON(@movie)
  end

end
