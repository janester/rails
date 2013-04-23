class AlbumsController < ApplicationController
  def index
    @albums = Album.order(:name)
  end

  def new
    @album = Album.new
  end

  def create
    Album.create(params[:album])
    @albums = Album.order(:name)
  end

  def show
    @album = Album.find(params[:id])
    @photos = @album.photos
  end

  def filter
    count = params[:count]
    album = Album.find(params[:id])
    @photos = album.photos.limit(count)
  end
end