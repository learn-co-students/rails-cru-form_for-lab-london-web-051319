class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(attr)
        redirect_to artist_path(@artist)
    end

    def edit
        find_artist
    end

    def update
        @artist = Artist.find(params[:id])
        @artist.update(attr)
        redirect_to artist_path(@artist)       
    end

    def show
        find_artist
    end

    private

    def find_artist
        @artist = Artist.find(params[:id])
    end

    def attr
        params.require(:artist).permit(:name, :bio)
    end
end
