class ActorsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    actors = Actor.all.order(:age :desc :english :gender)
    render json: actors.as_json
  end
  def create
    actors = Actors.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      actor_age: params["actors_age"],
      actor_gender: params["actors_gender"],
      movie_id: params["movie_id"]
    )
end
