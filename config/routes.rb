Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "/"
  get "/", to: "movies#index"
  get "movies", to: "movies#index"
  get "movies/new"
  get "movies/:id", to: "movies#show", as: "show"
  post "movies", to: "movies#create"

  get "recommendations", to: "recommendations#show"

  get "ratings/new"
  get "ratings", to: "ratings#show"
  post "ratings", to: "ratings#create"
end
