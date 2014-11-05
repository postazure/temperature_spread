class ClassDataAnalysis
  def initialize temp
    @temp_data = temp
  end

  def lowest_temperature

    low_temp = 100
    @temp_data.each do |temp|
      low_temp = temp.low if temp.low < low_temp
    end
    low_temp
  end

  def highest_temperature
    high_temp = 0
    @temp_data.each do |temp|
      high_temp = temp.high if temp.high > high_temp
    end
    high_temp
  end

  def day_of_lowest_temperature
    low_temp = 100
    day = 0
    @temp_data.each do |temp_obj|
      if low_temp > temp_obj.low
        day = temp_obj.day
        low_temp = temp_obj.low
      end
    end
    day
  end

  def day_of_highest_temperature
    high_temp = 0
    day = 0
    @temp_data.each do |temp_obj|
      if high_temp < temp_obj.high
        day = temp_obj.day
        high_temp = temp_obj.high
      end
    end
    day
  end

  def average_temperatures
    average_temp = []
    @temp_data.each do |temp_obj|
      average_temp << (temp_obj.low + temp_obj.high)/2.0
    end
    average_temp
  end


end
