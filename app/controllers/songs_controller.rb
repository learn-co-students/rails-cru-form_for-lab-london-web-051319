class SongsController < ApplicationController

    def new
        @song = Song.new
    end

    def index
        @songs = Song.all
    end

    def create
        song = Song.create song_params(:name, :artist_id, :genre_id)
        if song.valid?
            redirect_to song
        else flash[:errors] = song.errors.full_message
            redirect_to new_song_path
        end
    end

    def show
        @song = Song.find params[:id]
    end

    def edit
        @song = Song.find params[:id]
    end

    def update
        song = Song.find params[:id]
        song.update song_params(:name, :artist_id, :genre_id)
        redirect_to song
    end

    private

    def song_params(*args)
		params.require(:song).permit(*args)
	end
end
