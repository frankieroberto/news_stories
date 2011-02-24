require 'test_helper'

class PreviousStoryNameTest < ActiveSupport::TestCase

  should belong_to :story
  should validate_presence_of :name

end
