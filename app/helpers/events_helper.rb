module EventsHelper

  def dates(event)
    
    dates = event.start.to_s(:short)
    dates += " – " + event.end.to_s(:short) unless event.start == event.end
    return dates
  end
  
  def stories(event)
    stories = []

    event.stories.each do |story|
      stories << link_to(story.name, story)
    end
    
    content_tag("h1", stories.join(", ").html_safe, :class => :stories)
  end

end
