NewsStories::Application.routes.draw do

  devise_for :users

  resources :events

  resources :stories

  root :to => "homepage#show"

end
