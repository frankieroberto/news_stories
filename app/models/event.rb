class Event < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :start
  validates_presence_of :end

end
