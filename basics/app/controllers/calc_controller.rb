class CalcController < ApplicationController
  def calc
    @x = params["x"].to_f
    @y = params["y"].to_f

    @answer = case params["operator"]
    when "+" then @x+@y
    when "-" then @x-@y
    when "*" then @x*@y
    when "div" then @x/@y
    end
  end
end
