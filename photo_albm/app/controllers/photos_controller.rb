class PhotosController < ApplicationController
  def new
    @album_id = params[:album_id]
    @photo = Photo.new
  end

  def create
    photo = Photo.create(params[:photo])
    album = Album.find(params[:album_id])
    album.photos << photo
    @photos = album.photos
  end
end