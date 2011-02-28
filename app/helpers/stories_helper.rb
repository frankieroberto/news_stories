module StoriesHelper

  def story_dates(story)
    if story.events.count > 0
      date_range(story.first_event.start, story.last_event.end)    
    end
  end
  
  def date_range(start_date, end_date)

    dates = time_tag(start_date.to_s(:short), start_date)

    if start_date != end_date
      dates += " – ".html_safe + time_tag(end_date.to_s(:short), end_date)
    end
    
    if end_date.year != Date.today.year
      dates += " ".html_safe + end_date.year.to_s
    end
    return dates    
    
  end


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
