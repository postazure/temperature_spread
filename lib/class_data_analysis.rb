class ClassDataAnalysis
  def initialize temp
    @temp_data = temp
  end

  def lowest_temperature
    @temp_data.map {|temp| temp.low}.min
  end

  def highest_temperature
    @temp_data.map {|temp| temp.high}.max
  end

  def day_of_lowest_temperature
    low_day = {}
    @temp_data.each do |line|
      low_day[line.low] = line.day
    end

    keys = low_day.map {|k,v| k}
    low_day[keys.min]
  end

  def day_of_highest_temperature
    high_day = {}
    @temp_data.each do |line|
      high_day[line.high] = line.day
    end

    keys = high_day.map {|k,v| k}
    high_day[keys.max]
  end

  def average_temperatures
    @temp_data.map {|temp| (temp.high+temp.low)/2.0}
  end
end
