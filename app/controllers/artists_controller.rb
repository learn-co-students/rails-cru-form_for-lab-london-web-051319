class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def create
        artist = Artist.create artist_params(:name, :bio)
        if artist.valid?
            redirect_to artist
        else flash[:errors] = artist.errors.full_message
            redirect_to new_artist_path
        end
    end

    def show
        @artist = Artist.find params[:id]
    end

    def edit
        @artist = Artist.find params[:id]
    end

    def update
        artist = Artist.find params[:id]
        artist.update artist_params(:name, :bio)
        redirect_to artist
    end

    private

    def artist_params(*args)
		params.require(:artist).permit(*args)
    end
    
end
