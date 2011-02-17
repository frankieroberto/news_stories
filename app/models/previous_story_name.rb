class PreviousStoryName < ActiveRecord::Base

  belongs_to :story

  validates_presence_of :name

end
