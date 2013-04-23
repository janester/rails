class PrioritiesController < ApplicationController
  before_filter :check_if_logged_in
  def index
    @priorities = @current_user.priorities
  end

  def create
    priority = Priority.create(params[:priority])
    @current_user.priorities << priority
    render :json => [priority]
  end

  def update
    binding.pry
    priority = Priority.find(params[:id])
    priority.update_attributes(params[:priority])
    priority.save
    render :json => [priority]
  end

  def up
    pid = params[:id].to_i
    priority = Priority.find(pid)
    render :json => priority.swap_higher(@current_user)
  end

  def down
    pid = params[:id].to_i
    priority = Priority.find(pid)
    render :json => priority.swap_lower(@current_user)
  end

end
