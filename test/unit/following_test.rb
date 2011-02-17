require 'test_helper'

class FollowingTest < ActiveSupport::TestCase

  should belong_to :user
  should belong_to :story

end
