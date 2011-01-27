require 'test_helper'

class HomepageControllerTest < ActionController::TestCase

  test "should get homepage" do
    get :show
    assert_response :success
  end


end
