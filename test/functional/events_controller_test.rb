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
    
    context "when posting a valid new event" do
      
      setup do
        post :create, :event => {:name => "New event", :start => Date.today, :end => Date.today}
      end
      
      should respond_with :redirect
      should redirect_to("event page") {event_path(assigns(:event))}      
      
    end
    
    context "when updating an event" do
      
      setup do        
        put :update, :id => events(:london_underground_bombings).id, :event => {:name => "New name", :start => Date.today, :end => Date.today}
      end
      
      should respond_with :redirect
      should redirect_to("the event page") {event_path(events(:london_underground_bombings).id)}
      
    end
    
  end
  
  context "when not signed in" do
    
    
    context "when requesting the add event page" do

      setup { get :new }
      
      should redirect_to("login page") {new_user_session_path}      
      
    end
    
    context "when requesting the edit event page" do

      setup { get :edit, {:id => events(:london_underground_bombings).id} }
      
      should redirect_to("login page") {new_user_session_path}      
    
    end
    
  end
  

end
