class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(reqs(:name, :bio))
    redirect_to artist_path(artist)
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(reqs(:name, :bio))
    redirect_to artist_path(artist)
  end

  private

  def reqs(*args)
    params.require(:artist).permit(*args)
  end
end
