class ActorsController < ApplicationController
  def index
    actors = Actor.all.order(:age :desc :english :gender)
    render json: actors.as_json
  end
  def create
    actors = Actors.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      age: params
      actor_age:
      actor_gender:
      movie_id:
    
    
    
    )
end
