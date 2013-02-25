module ApplicationHelper

  def minutes_to_human(mins)
    hours = mins/60
    mins = mins%60
    if hours == 0
      "#{pluralize(mins, 'minute')}"
    elsif mins == 0
      "#{pluralize(hours, 'hour')}"
    else
      "#{pluralize(hours, 'hour')} and #{pluralize(mins, 'minutes')}"
    end
  end

end
