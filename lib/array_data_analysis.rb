class ArrayDataAnalysis

  def initialize(data)
    @data = data
  end

  def lowest_temperature
      analyzer = TEMPERATURE_DATA.min {|a,b| a[2] <=> b[2]}
      p analyzer
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
    avg_temperatures = []
    avg_temperatures.map 
    #average_temperatures = @data.each |t| { t[1] << t[2]}

    #"returns a array of average temperatures, on for each month"
    #expect(analyzer.average_temperatures.length).to be == 30
    #expect(analyzer.average_temperatures[0]).to be == 73.5
    #expect(analyzer.average_temperatures[29]).to be == 67.5
    # create an array called average_temperatures with a length of 30
  #   analyzer = TEMPERATURE_DATA.each do |ary|
  #     @data.each do |t|
  #       avg_month << (t[1] + t[2]/2).to_f
  #     end
  #   end
  #
  end
end
