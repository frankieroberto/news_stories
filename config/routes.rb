NewsStories::Application.routes.draw do

  resources :followings

  resources :story_connections

  devise_for :users

  resources :events

  resources :stories do
    resource :rename, :controller => :rename_stories
  end

  root :to => "homepage#show"

end
