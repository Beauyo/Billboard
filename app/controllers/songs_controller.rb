class SongsController < ApplicationController
  before_action :set_song, only: [:show, :update, :edit, :destroy]
  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
    render partial: "form"
  end

  def create
    @song = Song.new(songs.params)
    if 
      @song.save
      redirect_to artist_path
    else 
      render partial: "form" 
  end


  def edit
    render partial: "form"
  end

  def delete
    @song.destroy
  end

  private 
  def set_song
    @songs = Song.find(params[:id])
  end


  def song_params
    params.require(:billboard).permit(:artist)
  end
end
