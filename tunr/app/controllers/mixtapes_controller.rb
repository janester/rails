class MixtapesController < ApplicationController
  before_filter :check_if_logged_in

  def index
    @mixtapes = @current_user.mixtapes.order(:name)
  end

  def show
    @mixtape = Mixtape.find(params[:id])
  end

  def new
    @mixtape = Mixtape.new
  end

  def create
    @mixtape = Mixtape.create(params[:mixtape])
    if @mixtape.save
      @current_user.mixtapes << @mixtape
      redirect_to(mixtapes_path)
    else
      render :new
    end
  end

  def edit
    @mixtape = Mixtape.find(params[:id])
    render :new
  end

  def update
    @mixtape = Mixtape.find(params[:id])
    if @mixtape.update_attributes(params[:mixtape])
      redirect_to(mixtapes_path)
    else
      render :new
    end
  end


  private
  def check_if_logged_in
    redirect_to(root_path) if @current_user.nil? && !@current_user.is_admin
  end
end
