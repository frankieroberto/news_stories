NewsStories::Application.routes.draw do

  resources :events

  resources :stories

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

end
