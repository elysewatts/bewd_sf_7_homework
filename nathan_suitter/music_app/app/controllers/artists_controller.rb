class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = get_artist
  end

  def new
    @artist = Artist.new
  end

  def create 
    @artist = Artist.new(artists_params)
    @artist.save #active record_method
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = get_artist
  end

  def update
  end


  def destroy
    @artist = get_artist
    @artist.destroy
    redirect_to artists_path
  end


  private

  # #declares what can be written & read 
  def artists_params
    params.require(:artist).permit(:name, :pic_url, :year_released, :about)
  end

  def get_artist
    @artist = Artist.find(params[:id])
  end
end
