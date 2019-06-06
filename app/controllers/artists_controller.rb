class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
  end

  def create
    artist = Artist.create(params.require(:artist).permit(:name, :bio))
    redirect_to artist
  end

  def edit
  end
  
  def update
    artist = @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to artist_path
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
