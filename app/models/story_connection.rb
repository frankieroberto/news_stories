class StoryConnection < ActiveRecord::Base

  belongs_to :story
  belongs_to :event

end
