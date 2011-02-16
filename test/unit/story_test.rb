require 'test_helper'

class StoryTest < ActiveSupport::TestCase

  should validate_presence_of :name
  should have_many :story_connections
  should have_many :events

end
