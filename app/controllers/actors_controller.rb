class ActorsController < ApplicationController
  def index
    actors = Actor.all.order(:age :desc :english :gender)
    render json: actors.as_json
  end
end
