class MoviesController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def show

  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
