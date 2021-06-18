class MoviesController < ApplicationController
  def movie_first
    movie = Movies.first
    render json: movie.as_json
  end

  def movie_all
    movie = Movies.all
    render json: movie.as_json
  end
end
