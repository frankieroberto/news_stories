class HomepageController < ApplicationController

  def show
    @stories = Story.all
  end

end
