class Event < ActiveRecord::Base

  validates_presence_of :name, :start, :end

end
