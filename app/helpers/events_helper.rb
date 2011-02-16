module EventsHelper

  def dates(event)
    
    dates = event.start.to_s(:short)
    dates += " – " + event.end.to_s(:short) unless event.start == event.end
    return dates
  end

end
