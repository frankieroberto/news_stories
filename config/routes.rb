NewsStories::Application.routes.draw do

  resources :events

  resources :stories

  root :to => "homepage#show"

end
