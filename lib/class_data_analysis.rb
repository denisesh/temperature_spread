class ClassDataAnalysis
   def initialize(data)
    @data = data
   end

  def lowest_temperature
    @data.map{|t| t.low }.min
  end

  def highest_temperature
    @data.map{|t| t.high}.max
  end

  def day_of_lowest_temperature
    low_temp = self.lowest_temperature
    low_day = []
    @data.each { |d| low_day << d.day if d.low == low_temp }
    low_day.first
  end

 def day_of_highest_temperature
    high_temp = self.highest_temperature
    high_day = []
    @data.map{|d| high_day << d.day if d.high == high_temp}
    high_day.first
 end

 def average_temperatures
   @data.map{|t| t = (t.low + t.high) /2.0 }
 end



end
