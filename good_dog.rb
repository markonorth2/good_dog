class GoodDog
  attr_accessor :name, :height, :weight
  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says Arf!"
    # By removing the @ symbol, we're now calling the instance method, rather than the instance variable. 
    # Technically, you could just reference the instance variable, but it's generally a good idea to call the getter method instead.
  end

  def change_info(n, h, w)
    @name = n
    @height = h
    @weight = w
  end 

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

fido = GoodDog.new("Fido")
puts fido.speak 




