require 'test_helper'

class StoryTest < ActiveSupport::TestCase

  should validate_presence_of :name
  should have_many :story_connections
  should have_many :events
  should have_many :followings
  should have_many :users_following
  should have_many :previous_names

end
