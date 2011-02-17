class RenameStoriesController < ApplicationController

  before_filter :authenticate_user!

  def show
    @story = Story.find(params[:story_id])
  end

end