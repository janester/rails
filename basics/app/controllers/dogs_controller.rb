class DogsController < ApplicationController

  def dogs
  end

  def faq
  end

  def new
    redirect_to("/dogs")
  end

  def faq2
    render 'faq'
  end


end
