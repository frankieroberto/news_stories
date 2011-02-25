class Event < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :start
  validates_presence_of :end

  has_many :story_connections
  has_many :stories, :through => :story_connections
  
  scope :in_reverse_date_order, :order => "start DESC"
  scope :recent, :conditions => {:updated_at => (Time.now - 1.day)...Time.now}, :order => "updated_at DESC"
  

end
