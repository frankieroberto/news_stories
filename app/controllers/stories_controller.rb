class StoriesController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:index, :show]
  
  def show
    @story = Story.find(params[:id])
    if current_user
      @following = @story.followings.find_by_user_id(current_user.id)
    end
  end
  
  def index
    @stories = Story.recent(:limit => 10)
  end
  
  def new
    @story = Story.new
  end
  
  def create
    @story = Story.new(params[:story])
    if @story.save
      redirect_to @story
    else
      render :new
    end
      
  end
  
end
