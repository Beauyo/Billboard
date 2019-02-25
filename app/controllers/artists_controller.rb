class ArtistsController < ApplicationController
  # before_action :set_billboard, only: [:create]
  before_action :set_artist, only: [:show, :edit, :update, :destory]
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
    render partial: "form"
  end

  def create 
    @artist = Artist.new(artist_params)
    if @artist.save
    redirect_to artists_path
   else
    render partial: "form"
   end

  end


  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to [@billboard, artist]
    else
      render :edit
    end
  end

  def destroy 
    @artist.destroy
    redirect_to artists_path
  end 

  private
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :avatar)
  end

  # def set_billboard
  #   @billboard =  Billboard.find(params[:id])
  # end

end
