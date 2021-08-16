Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # This the syntax for making a home page (we prefer this because it jumps to the eye quickly)
  # root to: 'game#home'
  # same as:
  # get '/', to: 'games#home'

  # verb "url", to: "controller#action"
  get "/new", to: "games#new"
  post "/score", to: "games#score"
end
