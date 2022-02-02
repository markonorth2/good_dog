class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says Arf!"
  end

  def get_name
    @name
    #same result 
    # "#{@name}"
  end
  

  def set_name=(name)
    @name = name
  end

end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.get_name
sparky.set_name = "Spartacus"
puts sparky.get_name

fido = GoodDog.new("Fido")
puts fido.speak 


