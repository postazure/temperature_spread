class ArrayDataAnalysis
  def initialize temp_data
    @temp_data = temp_data
  end

  def lowest_temperature
    low_temp = 100
    @temp_data.each do |temp|
      low_temp = temp[2] if temp[2] < low_temp
    end
    low_temp
  end

  def highest_temperature
    high_temp = 0
    @temp_data.each do |temp|
      high_temp = temp[1] if temp[1] > high_temp
    end
    high_temp
  end

  def day_of_lowest_temperature
    day = 0
    low_temp = 100
    @temp_data.each do |temp|
      if temp[2] < low_temp
        day = temp[0]
        low_temp = temp[2]
      end
    end
    day
  end

  def day_of_highest_temperature
    day = 0
    high_temp = 0
    @temp_data.each do |temp|
      if temp[1] > high_temp
        day = temp[0]
        high_temp = temp[1]
      end
    end
    day
  end

  def average_temperatures
    average_temp = []
    @temp_data.each do |temp|
      average_temp << (temp[1]+temp[2])/2.0
    end
    average_temp
  end

end
