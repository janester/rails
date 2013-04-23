class ChannelsController < ApplicationController
  def create
    @channel = Channel.create(params[:channel])
    @channels = Channel.order(:name)
  end

  def refresh
    @channels = Channel.order(:name)
  end
end
