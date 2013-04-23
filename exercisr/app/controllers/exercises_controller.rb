class ExercisesController < ApplicationController
  before_filter :check_if_logged_in
  def index
    @exercises = @current_user.exercises.order(:completed_on)
    @unique_exercises = @current_user.exercises.map(&:activity).uniq.sort
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(params[:exercise])
    @current_user.exercises << @exercise
    @exercises = @current_user.exercises.order(:completed_on)
    @unique_exercises = @current_user.exercises.map(&:activity).uniq.sort
    respond_to do |format|
      format.html {redirect_to(exercises_path)}
      format.js
    end
  end

  def chart
    act = params[:activity]
    act = act.split("+").join(" ")
    @activities = @current_user.exercises.where(:activity => act)
    render :json => @activities
  end

end
