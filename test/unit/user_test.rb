require 'test_helper'

class UserTest < ActiveSupport::TestCase

  should have_many :followings
  should have_many :followed_stories

end
