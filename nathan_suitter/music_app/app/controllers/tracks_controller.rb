class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def new
  end

  def show
  end

  def destroy
    @track = get_track
    @track.delete
    redirect_to tracks_path
  end

private

  # #declares what can be written & read 
  def tracks_params
    params.require(:track).permit(:title, :track_link, :length, :artist_id)
  end

  def get_track
    @track = Track.find(params[:id])
  end
end
