require 'test_helper'

class StoriesControllerTest < ActionController::TestCase

  context "When viewing the add story page" do
    
    setup do
      sign_in users(:frankieroberto)
      get :new
    end
    
    should respond_with :success
    should assign_to :story
  end


end
