module ExamsHelper
  def convert_time time
    Time.zone.at time
  end

  def convert_minutes end_time, start_time
    Time.zone.at(convert_time(end_time) - convert_time(start_time))
  end
end
