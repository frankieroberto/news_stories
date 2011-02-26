class HomepageController < ApplicationController

  def show
          
    @top_stories = Story.recently_updated.all(:limit => 8)

  end

end
