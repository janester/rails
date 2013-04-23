class AlbumsController < ApplicationController
  before_filter :check_if_admin, :except => [:show, :index, :purchase, :bought]
  before_filter :check_if_logged_in, :only => [:purchase]
  def index
    @albums = Album.order(:name)
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to(albums_path)
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    render :new
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      redirect_to(albums_path)
    else
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def destroy
    album = Album.find(params[:id])
    album.delete
    redirect_to(albums_path)
  end

  def purchase
    @album = Album.find(params[:id])
  end

  def bought
    @album = Album.find(params[:id])
    owned_songs = []
    @album.songs.each do |song|
      if !@current_user.mixtapes.first.songs.include?(song)
        @current_user.mixtapes.first.songs << song
      else
        owned_songs << song
      end
    end
    price = @album.songs.map(&:price).sum - owned_songs.map(&:price).sum
    @current_user.balance = @current_user.balance - price
    @current_user.albums << @album
    @current_user.save
    redirect_to(albums_path)
  end



end

