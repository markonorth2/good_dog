class GoodDog
  attr_accessor :name, :height, :weight
  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
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

# sparky = GoodDog.new("Sparky")
# puts sparky.speak
# puts sparky.name
# sparky.name = "Spartacus"
# puts sparky.name

# fido = GoodDog.new("Fido")
# puts fido.speak 

rogers = GoodDog.new('Rogers', '12 inches', '10 lbs')
puts rogers.info      # => Rogers weighs 10 lbs and is 12 inches tall.

rogers.change_info('Spartacus', '24 inches', '45 lbs')
puts rogers.info      # => Spartacus weighs 45 lbs and is 24 inches tall.




