class HomepageController < ApplicationController

  def show
    
    if current_user
      
      @updated_stories = current_user.followed_stories.recently_updated
    end
  end

end
