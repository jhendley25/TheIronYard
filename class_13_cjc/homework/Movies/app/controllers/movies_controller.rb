class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create movie_params
    redirect_to root_path
  end

  def show
    @movie = Movie.find params[:id]
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    if @movie.update_attributes movie_params
      flash[:notice] = "You successfully updated this Movie!"
      redirect_to root_path
    else
      flash[:notice] = "You were unsuccessful updating this Movie!"
      render :edit
    end
  end

  def destroy
    @movie = Movie.find params[:id]
    @movie.delete
    redirect_to root_path
  end

  private
    def movie_params
      params.require(:movie).permit(:name,:year,:rating,:genre,:criticrating,:description)
    end

    def find_movie
      @movie = Movie.find params[:id]
    end
end
