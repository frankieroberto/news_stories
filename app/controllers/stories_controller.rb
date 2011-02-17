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
  
  def update
    @story = Story.new(params[:id])
    
    if params[:story][:name]
      if @story.update_name(params[:story][:name])
        redirect_to story_path(@story)
      else
        render "rename_stories/show"
      end
    end
  end
  
end
