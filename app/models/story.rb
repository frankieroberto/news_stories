class Story < ActiveRecord::Base

  validates_presence_of :name
  
  has_many :story_connections
  has_many :events, :through => :story_connections
  has_many :followings
  has_many :users_following, :through => :followings

  scope :recent, :order => "created_at DESC"
  

  def update_name(name)
    
    self.update_attributes(:name => name)
    
  end

end
