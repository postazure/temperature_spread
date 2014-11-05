class ArrayDataAnalysis
  def initialize temp_data
    @temp_data = temp_data
  end

  def lowest_temperature
    @temp_data.map {|temp| temp.last}.min
  end

  def highest_temperature
    @temp_data.map {|temp| temp[1]}.max
  end

  def day_of_lowest_temperature
    low_day = {}
    @temp_data.each do |line|
      low_day[line.last] = line.first
    end

    keys = low_day.map {|k,v| k}
    low_day[keys.min]
  end

  def day_of_highest_temperature
    high_day = {}
    @temp_data.each do |line|
      high_day[line[1]] = line.first
    end

    keys = high_day.map {|k,v| k}
    high_day[keys.max]
  end

  def average_temperatures
    @temp_data.map {|temp| (temp[1]+temp[2])/2.0}
  end
end
