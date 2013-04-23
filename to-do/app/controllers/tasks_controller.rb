class TasksController < ApplicationController
  before_filter :check_if_logged_in
  def index
    @tasks = @current_user.tasks
  end

  def create
    task = Task.create(params[:task])
    @current_user.tasks << task
    render :json => task.as_json(:include => :priority)
  end

  def update
    task = Task.find(params[:id])
    task.update_attributes(params[:task])
    task.save
    render :json => task.as_json(:include => :priority)
  end

  def destroy
    task = Task.find(params[:id])
    task.delete
    render :json => nil
  end
end