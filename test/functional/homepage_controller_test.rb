require 'test_helper'

class HomepageControllerTest < ActionController::TestCase

  context "when viewing homepage" do
    
    setup do
      get :show
    end
        
    should respond_with :success
    should assign_to :top_stories
  end


end
