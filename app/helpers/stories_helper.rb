module StoriesHelper

  def marker(story)
    if story.created_at > (Time.now - 1.day)
      content_tag("span", "new", :class => :new)
    elsif story.updated_at > (Time.now - 1.hour)
      content_tag("span", "updated", :class => :updated)
    else
      "".html_safe
    end      
  end
  
  def following_status(story)
    
    if current_user
      
      following = current_user.followings.first(:conditions => {:story_id => story.id})
      
      if following
        return content_tag("span", "Following", :class => :following)
      end  
      
    end
  end

end
