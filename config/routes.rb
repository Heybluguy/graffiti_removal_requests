Rails.application.routes.draw do
  root "landing#index"
  get "/search", to: "search#index", as: "search"
end
