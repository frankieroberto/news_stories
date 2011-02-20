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

end
