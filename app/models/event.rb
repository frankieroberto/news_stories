class Event < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :start
  validates_presence_of :end

  has_many :story_connections
  has_many :stories, :through => :story_connections

end
