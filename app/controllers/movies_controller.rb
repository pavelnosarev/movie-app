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

  def index
    movie = Movie.all
    render json: movie.as_json
  end
  def create
    movie = Movie.new(
      first_name: params["first_name"]
      last_name: params["last_name"]
      known_for: params["known_for"]
    )
     movie.save
     render json: movie.as_json
  end
  def show
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    render json: movie
    end
  def update
    movie_id = params["id"]
    movie = Movie.find(id: movie_id)
    movie.first_name = params["first_name"] || product.first_name
    product.last_name = params["last_name"] || product.last_name
    product.known_for = params["known_for"] || product.known_for
    product.save
    render json: movie.as_json
  end
  def destroy
    movie_id = params[:id]
    movie = movie.find(id:movie_id)
    movie.destroy
    render json: {message: "This has been destroyed!"}
  end
end
