class MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

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

  # def index
  #   movie = Movie.all
  #   render json: movie.as_json
  # end
  def index
    actors = Actor.all.order(age: :desc)
    render json: actors.as_json
  end
  def create
    movie = Movie.new(
      first_name: params["first_name"]
      last_name: params["last_name"]
      known_for: params["known_for"]
    )
     if movie.save
     render json: movie
     else 
      render json: {error: 422}
     end
  end
  def show
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    render json: movie
    end
  def update
    movie_id = params["id"]
    movie = Movie.find(id: movie_id)
    movie.first_name = params["first_name"] || movie.first_name
    movie.last_name = params["last_name"] || movie.last_name
    movie.known_for = params["known_for"] || movie.known_for
    if movie.save
      render json: movie
    else
      render json: {error: 422}
  end
  def destroy
    movie_id = params[:id]
    movie = movie.find(id:movie_id)
    movie.destroy
    render json: {message: "This has been destroyed!"}
  end
end
