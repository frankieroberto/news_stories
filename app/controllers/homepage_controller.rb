class HomepageController < ApplicationController

  def show
    @stories = Story.all
    
    if current_user
      @stories_following = current_user.followed_stories
      stories_following_ids = []
      @stories_following.each do |s|
        stories_following_ids << s.id
      end
      @events = Event.all(:joins => :story_connections, :conditions => {:story_connections => {:story_id => stories_following_ids}})
    end
  end

end
