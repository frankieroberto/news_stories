require 'test_helper'

class EventTest < ActiveSupport::TestCase

  should validate_presence_of :start
  should validate_presence_of :end
  should validate_presence_of :name

end
