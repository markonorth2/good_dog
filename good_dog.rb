class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says Arf!"
  end

  def name # This was renamed from "get_name"
    @name
    #same result 
    # "#{@name}"
  end
  

  def name=(n) # This was renamed from "set_name="
    @name = n
  end

end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

fido = GoodDog.new("Fido")
puts fido.speak 



