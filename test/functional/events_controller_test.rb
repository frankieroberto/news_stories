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
  
  context "when signed in" do
    
    setup do
      sign_in users(:frankieroberto)
    end
    
    context "when viewing the add event page" do
      
      setup do
        get :new
      end
      
      should respond_with :success
      should assign_to :event
      
    end
    
    context "when viewing the add an event to a particular story page" do

      setup do
        get :new, {:story_id => stories(:london_7_july_bombings).id}
      end
      
      should respond_with :success
      should assign_to :event
      should assign_to :story            
      
    end
    
    
  end

end
