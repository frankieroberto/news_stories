class Story < ActiveRecord::Base

  validates_presence_of :name
  
  has_many :story_connections, :dependent => :destroy
  has_many :events, :through => :story_connections
  has_many :followings, :dependent => :destroy
  has_many :users_following, :through => :followings
  has_many :previous_names, :class_name => "PreviousStoryName", :dependent => :destroy

  scope :recent, :order => "created_at DESC"
  
  scope :recently_updated, :conditions => {:updated_at => (Time.now - 1.day)...Time.now}, :order => "updated_at DESC"

  def recent_events
    self.events.recent.limit(4)
  end

  def update_name(name)
    
   self.previous_names.build(:name => self.name)
    
    self.name = name
    if self.save
      return true
    else
      return false
    end
    
  end

end
