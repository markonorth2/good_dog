class MyCar 
  attr_accessor :color
  def initialize (year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def info 
    puts "The car is #{@color} #{@year} #{@model}."
  end

  def speed_up(num)
    @current_speed += num
    puts "You pushed the gas pedal and accelerate #{num}kph to #{@current_speed}kph"
  end 

  def spray_paint(color)
    self.color = color 
    puts "Your new #{color} paint job looks great!"
  end

end 

honda = MyCar.new(2019, "gray", "Civic") 
honda.info
honda.speed_up(Integer(gets.chomp))
honda.speed_up(Integer(gets.chomp))
honda.spray_paint("blue")
honda.info


  
  