require 'test_helper'

class StoryConnectionTest < ActiveSupport::TestCase

  should belong_to :story
  should belong_to :event

end
