NewsStories::Application.routes.draw do

  resources :previous_story_names

  resources :followings

  resources :story_connections

  devise_for :users

  resources :events

  resources :stories do
    resource :rename, :controller => :rename_stories
    resources :previous_names, :controller => :previous_story_names
  end

  root :to => "homepage#show"

end
