class AController < ApplicationController

  def a
    @response = params[:page]
    case @response
    when "1" then redirect_to "/a"
    when "2" then redirect_to "/e"
    when "3" then redirect_to "/f"
    when "a" then redirect_to "/a"
    when "b" then redirect_to "/b"
    when "c" then redirect_to "/c"
    end

  end

  def b
  end

  def c
  end

  def d
  end

  def e
  end

  def f
  end



end
