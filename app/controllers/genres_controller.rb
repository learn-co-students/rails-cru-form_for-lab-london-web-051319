class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update]

  def index
    @genres = Genre.all
  end

  def show
  end

  def new
  end

  def create
    genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre
  end

  def edit
  end
  
  def update
    genre = @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end
end
