class SongsController < ApplicationController
  before_filter :check_if_admin, :except => [:show, :index, :purchase, :bought, :refund, :returned]
  before_filter :check_if_logged_in, :only => [:purchase, :refund]

  def index
    @songs = Song.order(:name)
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to(songs_path)
    else
      render :new
    end
  end

  def edit
    @song = Song.find(params[:id])
    render :new
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      redirect_to(songs_path)
    else
      render :new
    end
  end

  def show
    @song = Song.find(params[:id])
  end

  def destroy
    song = Song.find(params[:id])
    song.delete
    redirect_to(songs_path)
  end

  def purchase
    @song = Song.find(params[:id])
  end

  def bought
    @song = Song.find(params[:song_id])
    if @song.update_attributes(params[:song])
      @current_user.balance = @current_user.balance - @song.price
      @current_user.mixtapes.first.songs << @song
      @current_user.save
      redirect_to(mixtapes_path)
    else
      render :purchase
    end
  end

  def refund
    @song = Song.find(params[:id])
  end

  def returned
    @song = Song.find(params[:id])
    @current_user.mixtapes.each do |mixtape|
      if mixtape.songs.include?(@song)
        mixtape.songs.delete(@song)
      end
    end
    @current_user.balance = @current_user.balance + (@song.price*0.7)
    @current_user.save
    redirect_to(mixtapes_path)
  end





end
