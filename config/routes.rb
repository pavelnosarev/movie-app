Rails.application.routes.draw do
  # get "/get_id", controller: id, action: "get_id"
  get "/movie_first" => "movies#movie_first"
  get "/movie_all" => "movies#movie_all"
end
