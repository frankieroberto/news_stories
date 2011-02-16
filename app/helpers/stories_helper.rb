module StoriesHelper

  def marker(story)
    content_tag("span", "new", :class => :new) if story.created_at > (Time.now - 1.day)
  end

end
