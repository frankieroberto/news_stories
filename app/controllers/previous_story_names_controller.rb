class PreviousStoryNamesController < ApplicationController

  def index
    @story = Story.find(params[:story_id])
    @previous_names = @story.previous_names
  end

end
