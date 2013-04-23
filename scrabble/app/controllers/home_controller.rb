class HomeController < ApplicationController
  def index
    @channel = Channel.new
    @channels = Channel.order(:name)
  end
end
