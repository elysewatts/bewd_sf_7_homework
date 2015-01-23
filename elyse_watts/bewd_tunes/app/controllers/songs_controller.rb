class SongsController < ApplicationController
  
  def new
    @song = Song.new
  end

  def create
  	@song = Song.new(song_params)
  	@song.save
  	redirect_to song_path(@song)
  end

  def index
  	@songs = Songs.all
  end

  def show
  	@song = get_song
  end

  def edit
  	@song = get_song
  end


  private

  def song_params
    params.require(:song).permit(:name, :artist)
  end

  def get_song
    @song = Song.find(params[:id])
  end

end