class Story < ActiveRecord::Base

  validates_presence_of :name
  
  has_many :story_connections
  has_many :events, :through => :story_connections
  has_many :followings
  has_many :users_following, :through => :followings
  has_many :previous_names, :class_name => "PreviousStoryName"

  scope :recent, :order => "created_at DESC"
  

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
