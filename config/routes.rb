Rails.application.routes.draw do
  # get "/get_id", controller: id, action: "get_id"
  # get "/movie_first" => "movies#movie_first"
  # get "/movie_all" => "movies#movie_all"
  # get "/query_params" => "movies#query_params"
  # get "/segment_params/:id" => "movies#segment_params"
  # post "/body_params" => "movies#body_params"
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  post "/movie_genre" => "movie_genre#create"
end
