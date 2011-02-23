module EventsHelper

  def time_tag(content, time)
    
    content_tag("time", content, :datetime => time.to_s)
    
  end

  def dates(event, options = {:format => :short})
    
    if options[:format] == :full
      dates = time_tag(event.start.to_s(:long), event.start)
      dates += " – " + time_tag(event.end.to_s(:long), event.end) unless event.start == event.end      
    else  
      dates = time_tag(event.start.to_s(:short), event.start)
      dates += " – " + time_tag(event.end.to_s(:short), event.end) unless event.start == event.end
    end
    return dates
  end
  
  def stories(event)
    stories = []

    event.stories.each do |story|
      stories << link_to(story.name, story)
    end
    
    stories.join(", ").html_safe
  end

end
