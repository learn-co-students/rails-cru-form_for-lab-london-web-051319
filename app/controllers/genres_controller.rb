class GenresController < ApplicationController

    def new
        @genre = Genre.new
    end

    def create
        genre = Genre.create genre_params(:name)
        if genre.valid?
            redirect_to genre
        else flash[:errors] = genre.errord.full_message
            redirect_to new_genre_path
        end 
    end

    def show
        @genre = Genre.find params[:id]
    end

    def edit
        @genre = Genre.find params[:id]
    end

    def update
        genre = Genre.find params[:id]
        genre.update genre_params(:name)
        redirect_to genre
    end

    private

    def genre_params(*args)
		params.require(:genre).permit(*args)
	end
end
