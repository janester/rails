class HomeController < ApplicationController
  def homepage
  end

  def numbers
    @amount = 234
    @largenumber = 2309832872348712034998273478620358729
    @phone = 2128651937
  end

  def text
    @numbers = (1..20).to_a
    @personcount1 = 1
    @personcount2 = 2
    @story = "a very very long time ago in a place far far away"
  end

  def assets
  end

  def url

  end


end
