class FollowingsController < ApplicationController

  before_filter :authenticate_user!
  
  def create
    @story = Story.find(params[:story_id])
    @following = @story.followings.new
    @following.user = current_user
    
    @following.save!
    redirect_to story_path(@story)
    
  end

  def destroy
    @following = Following.find(params[:id])
    @story = @following.story
    if @following.user == current_user
      @following.destroy
      redirect_to story_path(@story)
    else
      raise "Unauthorised"
    end
    
  end

end
