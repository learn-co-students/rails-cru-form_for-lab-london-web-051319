class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(attr)
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(attr)
        redirect_to song_path(@song)       
    end

    def show
        @song = Song.find(params[:id])
    end

    private

    def find_songs
        @song = Song.find(params[:id])
    end

    def attr
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
