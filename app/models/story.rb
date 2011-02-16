class Story < ActiveRecord::Base

  validates_presence_of :name
  
  has_many :story_connections
  has_many :events, :through => :story_connections

  scope :recent, :order => "created_at DESC"

end
