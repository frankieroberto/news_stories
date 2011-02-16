class EventsController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:index, :show]  

  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
    @story = Story.find(params[:story_id]) if params[:story_id]
  end
  
  def create
    @event = Event.new(params[:event])
    
    if params[:story_id]
      @story = Story.find(params[:story_id])
      @event.stories << @story
    end
    
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

end
