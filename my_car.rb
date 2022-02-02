class MyCar 
  def initialize (year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(num)
    @current_speed += num
    puts "You pushed the gas pedal and accelerate #{num}kph to #{@current_speed}kph"
  end 



end 

honda = MyCar.new(2019, "gray", "Civic") 
honda.speed_up(5)

  
  