NewsStories::Application.routes.draw do

  resources :story_connections

  devise_for :users

  resources :events

  resources :stories

  root :to => "homepage#show"

end
