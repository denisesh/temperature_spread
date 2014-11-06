class ArrayDataAnalysis

  def initialize(data)
    @data = data
  end

  def lowest_temperature
      analyzer = TEMPERATURE_DATA.min {|a,b| a[2] <=> b[2]}
      analyzer[2]
  end

  def highest_temperature
    analyzer = TEMPERATURE_DATA.max {|a,b| a[1] <=> b[1]}
    analyzer[1]
  end

  def day_of_lowest_temperature
    #return the day corresponding to the lowest temperature (first column in nested array)
    analyzer = TEMPERATURE_DATA.min {|a,b| a[2] <=> b[2]}
    p analyzer
    analyzer[0]
  end

  def day_of_highest_temperature
    analyzer = TEMPERATURE_DATA.max {|a,b| a[1] <=> b[1]}
    analyzer[0]
  end

  def average_temperatures
    #average_temperatures = []
    @data.map{|t| t = (t[1] + t[2])/2.0}

    # @data.each do |t|
    #     average_temperatures << (t[1] + t[2])/2.to_f
    #   end
    #analyzer = average_temperatures[0]
    #analyzer = average_temperatures[29]


  end
end
