require 'test_helper'

class EventsControllerTest < ActionController::TestCase

  context "when viewing the events page" do
    
    setup do
      get :index
    end
    
    should assign_to :events
    
  end

  context "when viewing an event page" do
    
    setup do
      get :show, {:id => events(:london_underground_bombings).id}      
    end
    
    should respond_with :success
    should assign_to(:event)
    
  end

end
