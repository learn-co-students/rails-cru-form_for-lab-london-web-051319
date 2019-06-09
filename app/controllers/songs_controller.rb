class SongsController < ApplicationController
   before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
     @songs = Song.all
     # id_s = @songs.pluck(:artist_id)
     # @artists = Artist.where(id_s.include?(:id))
     # # byebug
  end

  def show
     @genre = Genre.find_by(:id == @song.genre_id)
     @artist = Artist.find_by(:id == @song.artist_id)
  end

  def new
     @song = Song.new
  end

  def create
     @song = Song.create(song_params(:name, :artist_id, :genre_id))
     redirect_to song_path(@song)
  end

  def edit
  end

  def update
     @song.update(song_params(:name, :artist_id, :genre_id))
     redirect_to song_path(@song)
  end

  def destroy
     @song.destroy
     redirect_to songs_path
  end

  private

  def set_song
     @song = Song.find(params[:id])
  end

  def song_params(*args)
     params.require(:song).permit(args)
  end

  def artist_name
     @song = Song.find(params[:id])
     @song.artist.name
  end

end
