Rails.application.routes.draw do
  root to: "pages#home"
  get "about", to: "pages#about"
  get "league", to: "pages#league"
  get "tournament", to: "pages#tournament"
end
