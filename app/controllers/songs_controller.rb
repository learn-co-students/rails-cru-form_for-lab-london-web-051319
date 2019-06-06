class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.create(reqs)
    redirect_to song_path(song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.update(reqs)
    redirect_to song_path(song)
  end

  private
  def reqs
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
