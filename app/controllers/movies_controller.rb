class MoviesController < ApplicationController
  def movie_first
    movie = Movies.first
    render json: movie.as_json
  end

  def movie_all
    movie = Movies.all
    render json: movie.as_json
  end

  def query_params
    input_value = params["actor"]
    render json: { message: "#{input_value}" }
  end

  def segment_params
    input_value = params [:id]
    render json: { message: "the actor info is here: #{input_value}." }
  end

  def body_params
    input_value = params["actor"]
    render json: { message: "#{input_value}." }
  end
end
