class RenameStoriesController < ApplicationController

  def show
    @story = Story.find(params[:story_id])
  end

end