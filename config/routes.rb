Rails.application.routes.draw do
  get "/get_id", controller: id, action: "get_id"
end
