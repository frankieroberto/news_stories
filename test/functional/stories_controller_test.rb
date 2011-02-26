require 'test_helper'

class StoriesControllerTest < ActionController::TestCase

  context "When signed in" do

    setup do
      sign_in users(:frankieroberto)
    end

    context "When viewing the add story page" do
    
      setup do
        get :new
      end
    
      should respond_with :success
      should assign_to :story
    end

  end
  
  context "When not signed in" do
    
    context "When viewing the add story page" do

      setup do
        get :new
      end
      
      should redirect_to("/users/sign_in")
      
    end
    
    
  end

end
