class GenresController < ApplicationController
  before_action :find_genre, only: [:show, :edit, :update, :destroy]

  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.create genre_params
    redirect_to genre_path(@genre)
  end

  def new
    @genre = Genre.new
  end

  def edit
  end

  def show
  end

  def update
    @genre.update genre_params
    redirect_to genre_path(@genre)
  end

  def destroy
  end

  private

  def find_genre
    @genre = Genre.find params[:id]
  end

  def genre_params
    params.require(:genre).permit(:name)
  end
end
