class ArtistsController < ApplicationController
  before_filter :check_if_admin, :except => [:show, :index]
  def index
    @artists = Artist.order(:name)
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      redirect_to(artists_path)
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:format])
    render :new
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(params[:artist])
      redirect_to(artists_path)
    else
      render :new
    end
  end
  def show
    @artist = Artist.find(params[:id])
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.delete
    redirect_to(artists_path)
  end


end
